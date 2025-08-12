// pubspec.yaml에:
// file_picker: ^5.2.5
// dio: ^5.2.2
// path: ^1.8.3

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;

class AudioUploadPage extends StatefulWidget {
  @override
  _AudioUploadPageState createState() => _AudioUploadPageState();
}

class _AudioUploadPageState extends State<AudioUploadPage> {
  double _progress = 0.0;
  String? _resultText;
  bool _uploading = false;

  Future<void> pickAndUpload() async {
    final res = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3', 'wav', 'm4a', 'aac', 'flac'],
    );
    if (res == null || res.files.isEmpty) return;

    final file = File(res.files.single.path!);
    await uploadFile(file);
  }

  Future<void> uploadFile(File file) async {
    setState(() {
      _uploading = true;
      _progress = 0.0;
      _resultText = null;
    });

    final dio = Dio();
    final fileName = p.basename(file.path);

    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
      // 추가 메타 데이터 필요하면 여기에 넣기 (ex: language, userId)
    });

    try {
      final response = await dio.post(
        'https://your-api.example.com/upload',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer YOUR_TOKEN', // 인증 있으면
          },
        ),
        onSendProgress: (sent, total) {
          if (total != 0) {
            final prog = sent / total;
            setState(() => _progress = prog);
          }
        },
        // timeout 등 옵션 필요 시 설정
      );

      // 서버가 바로 전사/요약 결과를 반환한다면:
      if (response.statusCode == 200) {
        setState(() {
          _resultText =
              response.data['summary'] ?? response.data['transcript'] ?? '완료';
        });
      } else {
        setState(() => _resultText = '업로드 실패: ${response.statusCode}');
      }
    } catch (e) {
      setState(() => _resultText = '업로드 에러: $e');
    } finally {
      setState(() => _uploading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('오디오 업로드 및 요약')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _uploading ? null : pickAndUpload,
              child: Text(_uploading ? '업로드 중...' : '오디오 선택 & 업로드'),
            ),
            SizedBox(height: 16),
            LinearProgressIndicator(value: _progress),
            SizedBox(height: 16),
            if (_resultText != null)
              Expanded(child: SingleChildScrollView(child: Text(_resultText!))),
          ],
        ),
      ),
    );
  }
}
