/// Model class for Posts
final class Posts {
  /// Constructor
  Posts({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  /// From Json
  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        userId: json['userId'] as int?,
        id: json['id'] as int?,
        title: json['title'] as String?,
        body: json['body'] as String?,
      );

  /// user id
  final int? userId;

  /// id
  final int? id;

  /// title
  final String? title;

  /// body
  final String? body;

  /// Copy with
  Posts copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      Posts(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );
}
