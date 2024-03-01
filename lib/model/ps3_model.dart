class PS3Model {
  final String title;

  const PS3Model({
    required this.title,

  });

  PS3Model copyWith({
    String? title,
  }) {
    return PS3Model(
      title: title ?? this.title,

    );
  }
}