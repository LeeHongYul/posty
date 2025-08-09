// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEntitiesImpl _$$PostEntitiesImplFromJson(Map<String, dynamic> json) =>
    _$PostEntitiesImpl(
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
    );

Map<String, dynamic> _$$PostEntitiesImplToJson(_$PostEntitiesImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
