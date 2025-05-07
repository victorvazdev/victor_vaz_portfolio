// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

  Project copyWith({
    String? name,
    String? description,
    String? image,
    String? video,
    String? url,
  }) {
    return Project(
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      video: video ?? this.video,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'video': video,
      'url': url,
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      name: map['name'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      video: map['video'] as String,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Project(name: $name, description: $description, image: $image, video: $video, url: $url)';
  }

  @override
  bool operator ==(covariant Project other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.description == description &&
        other.image == image &&
        other.video == video &&
        other.url == url;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        image.hashCode ^
        video.hashCode ^
        url.hashCode;
  }
}
