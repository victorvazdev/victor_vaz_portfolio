// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Experience {
  String name;
  String period;
  String description;

  Experience({
    required this.name,
    required this.period,
    required this.description,
  });

  Experience copyWith({String? name, String? period, String? description}) {
    return Experience(
      name: name ?? this.name,
      period: period ?? this.period,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'period': period,
      'description': description,
    };
  }

  factory Experience.fromMap(Map<String, dynamic> map) {
    return Experience(
      name: map['name'] as String,
      period: map['period'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Experience.fromJson(String source) =>
      Experience.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Experience(name: $name, period: $period, description: $description)';

  @override
  bool operator ==(covariant Experience other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.period == period &&
        other.description == description;
  }

  @override
  int get hashCode => name.hashCode ^ period.hashCode ^ description.hashCode;
}
