// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:victor_vaz_portfolio/app/models/certification.dart';
import 'package:victor_vaz_portfolio/app/models/experience.dart';
import 'package:victor_vaz_portfolio/app/models/graduation.dart';
import 'package:victor_vaz_portfolio/app/models/project.dart';

class VictorVaz {
  String name;
  String position;
  String biography;
  String email;
  String phone;
  String linkedin;
  String github;
  String location;
  List<Graduation> graduations;
  List<Experience> experiences;
  List<Certification> certifications;
  List<Project> projects;

  VictorVaz({
    required this.name,
    required this.position,
    required this.biography,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.github,
    required this.location,
    required this.graduations,
    required this.experiences,
    required this.certifications,
    required this.projects,
  });

  VictorVaz copyWith({
    String? name,
    String? position,
    String? biography,
    String? email,
    String? phone,
    String? linkedin,
    String? github,
    String? location,
    List<Graduation>? graduations,
    List<Experience>? experiences,
    List<Certification>? certifications,
    List<Project>? projects,
  }) {
    return VictorVaz(
      name: name ?? this.name,
      position: position ?? this.position,
      biography: biography ?? this.biography,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      linkedin: linkedin ?? this.linkedin,
      github: github ?? this.github,
      location: location ?? this.location,
      graduations: graduations ?? this.graduations,
      experiences: experiences ?? this.experiences,
      certifications: certifications ?? this.certifications,
      projects: projects ?? this.projects,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'position': position,
      'biography': biography,
      'email': email,
      'phone': phone,
      'linkedin': linkedin,
      'github': github,
      'location': location,
      'graduations': graduations.map((x) => x.toMap()).toList(),
      'experiences': experiences.map((x) => x.toMap()).toList(),
      'certifications': certifications.map((x) => x.toMap()).toList(),
      'projects': projects.map((x) => x.toMap()).toList(),
    };
  }

  factory VictorVaz.fromMap(Map<String, dynamic> map) {
    return VictorVaz(
      name: map['name'] as String,
      position: map['position'] as String,
      biography: map['biography'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      linkedin: map['linkedin'] as String,
      github: map['github'] as String,
      location: map['location'] as String,
      graduations: List<Graduation>.from(
        (map['graduations'] as List<dynamic>).map<Graduation>(
          (x) => Graduation.fromMap(x),
        ),
      ),
      experiences: List<Experience>.from(
        (map['experiences'] as List<dynamic>).map<Experience>(
          (x) => Experience.fromMap(x),
        ),
      ),
      certifications: List<Certification>.from(
        (map['certifications'] as List<dynamic>).map<Certification>(
          (x) => Certification.fromMap(x),
        ),
      ),
      projects: List<Project>.from(
        (map['projects'] as List<dynamic>).map<Project>(
          (x) => Project.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory VictorVaz.fromJson(String source) =>
      VictorVaz.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VictorVaz(name: $name, position: $position, biography: $biography, email: $email, phone: $phone, linkedin: $linkedin, github: $github, location: $location, graduations: $graduations, experiences: $experiences, certifications: $certifications, projects: $projects)';
  }

  @override
  bool operator ==(covariant VictorVaz other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.position == position &&
        other.biography == biography &&
        other.email == email &&
        other.phone == phone &&
        other.linkedin == linkedin &&
        other.github == github &&
        other.location == location &&
        listEquals(other.graduations, graduations) &&
        listEquals(other.experiences, experiences) &&
        listEquals(other.certifications, certifications) &&
        listEquals(other.projects, projects);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        position.hashCode ^
        biography.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        linkedin.hashCode ^
        github.hashCode ^
        location.hashCode ^
        graduations.hashCode ^
        experiences.hashCode ^
        certifications.hashCode ^
        projects.hashCode;
  }
}
