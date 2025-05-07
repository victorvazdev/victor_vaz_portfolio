import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';

abstract class DataService {
  Future<VictorVaz> getAll();
}
