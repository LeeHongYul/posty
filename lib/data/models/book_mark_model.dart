class BookMarkModel {
  final int id;
  final DateTime createdAt;

  const BookMarkModel({
    required this.id,
    required this.createdAt,
  });

  factory BookMarkModel.fromJson(Map<String, dynamic> json) {
    return BookMarkModel(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
