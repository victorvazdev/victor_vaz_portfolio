class Project {
  String name;
  String description;
  String image;
  String video;
  String? url;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.video,
    this.url,
  });
}
