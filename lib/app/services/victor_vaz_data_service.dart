import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:victor_vaz_portfolio/app/helpers/constants.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';
import 'package:victor_vaz_portfolio/app/services/data_service.dart';

class VictorVazDataService implements DataService {
  @override
  Future<VictorVaz> getAll() async {
    try {
      final http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode != 200) {
        throw Exception(
          'Failed to fetch data. Status code: ${response.statusCode}',
        );
      }

      Map<String, dynamic> dataMap = convert.jsonDecode(response.body);

      VictorVaz data = VictorVaz.fromMap(dataMap);

      return data;
    } catch (e) {
      throw Exception('Error on fetching: $e');
    }
  }
}
