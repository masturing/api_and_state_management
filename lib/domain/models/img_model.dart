class Img {
  final String? preview;

  Img({
    this.preview,
  });

  factory Img.fromJson(Map<String, dynamic> json) {
    return Img(
      preview: json['preview'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'preview': preview,
    };
  }
}
