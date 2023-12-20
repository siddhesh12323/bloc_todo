class Todo {
  final String title;
  final String subtitle;
  bool isDone;

  Todo({
    this.title = '',
    this.subtitle = '',
    this.isDone = false,
  });

  Todo copyWith({
    String? title,
    String? subtitle,
    bool? isDone,
  }) {
    return Todo(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      isDone: isDone ?? this.isDone,
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      isDone: json['isDone'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'isDone': isDone,
    };
  }

  @override
  String toString() {
    return 'Todo{title: $title, subtitle: $subtitle, isDone: $isDone}';
  }
}
