// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Certification {
  String name;

  Certification({required this.name});

  Certification copyWith({String? name}) {
    return Certification(name: name ?? this.name);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory Certification.fromMap(Map<String, dynamic> map) {
    return Certification(name: map['name'] as String);
  }

  String toJson() => json.encode(toMap());

  factory Certification.fromJson(String source) =>
      Certification.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Certification(name: $name)';

  @override
  bool operator ==(covariant Certification other) {
    if (identical(this, other)) return true;

    return other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
