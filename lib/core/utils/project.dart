class Project {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? webLink;

  Project({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.webLink,
  });
}
