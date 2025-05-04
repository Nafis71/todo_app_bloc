class TodoState {
  String? title;
  DateTime? createdAt;

  TodoState({this.title, this.createdAt});

  TodoState copyWith({
    String? title,
    DateTime? createdAt,
  }) {
    return TodoState(
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'TodoState{title: $title, createdAt: $createdAt}';
  }
}
