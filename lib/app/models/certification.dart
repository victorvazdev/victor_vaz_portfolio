// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Certification {
  String name;
  String url;

  Certification({required this.name, required this.url});

  Certification copyWith({String? name, String? url}) {
    return Certification(name: name ?? this.name, url: url ?? this.url);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'url': url};
  }

  factory Certification.fromMap(Map<String, dynamic> map) {
    return Certification(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Certification.fromJson(String source) =>
      Certification.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Certification(name: $name, url: $url)';

  @override
  bool operator ==(covariant Certification other) {
    if (identical(this, other)) return true;

    return other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
