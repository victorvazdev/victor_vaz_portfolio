import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';
import 'package:victor_vaz_portfolio/app/services/data_service.dart';
import 'package:victor_vaz_portfolio/app/services/victor_vaz_data_service.dart';

class VictorVazDataViewModel {
  VictorVaz _data = VictorVaz.empty();

  VictorVaz get data => _data;

  Future<VictorVaz> getData() async {
    final DataService dataService = VictorVazDataService();
    _data = await dataService.getAll();
    return _data;
  }
}
