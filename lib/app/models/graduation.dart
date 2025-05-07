// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Graduation {
  String name;
  String period;

  Graduation({required this.name, required this.period});

  Graduation copyWith({String? name, String? period}) {
    return Graduation(name: name ?? this.name, period: period ?? this.period);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'period': period};
  }

  factory Graduation.fromMap(Map<String, dynamic> map) {
    return Graduation(
      name: map['name'] as String,
      period: map['period'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Graduation.fromJson(String source) =>
      Graduation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Graduation(name: $name, period: $period)';

  @override
  bool operator ==(covariant Graduation other) {
    if (identical(this, other)) return true;

    return other.name == name && other.period == period;
  }

  @override
  int get hashCode => name.hashCode ^ period.hashCode;
}
