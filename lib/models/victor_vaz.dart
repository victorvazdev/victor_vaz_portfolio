import 'package:victor_vaz_portfolio/models/certification.dart';
import 'package:victor_vaz_portfolio/models/experience.dart';
import 'package:victor_vaz_portfolio/models/graduation.dart';

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
  });
}
