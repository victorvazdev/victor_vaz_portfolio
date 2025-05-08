import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:victor_vaz_portfolio/app/api_key.dart';
import 'package:victor_vaz_portfolio/app/helpers/constants.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';
import 'package:victor_vaz_portfolio/app/services/data_service.dart';

class VictorVazDataService implements DataService {
  @override
  Future<VictorVaz> getAll() async {
    try {
      final http.Response response = await http.get(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer $gistApiKey'},
      );

      if (response.statusCode != 200) {
        throw Exception(
          'Failed to fetch data. Status code: ${response.statusCode}',
        );
      }

      Map<String, dynamic> dataMap = convert.jsonDecode(response.body);

      if (dataMap['files'] == null ||
          dataMap['files']['victor_vaz_data.json'] == null ||
          dataMap['files']['victor_vaz_data.json']['content'] == null) {
        throw Exception('Invalid response structure: Missing expected keys.');
      }

      VictorVaz data = VictorVaz.fromMap(
        convert.jsonDecode(dataMap['files']['victor_vaz_data.json']['content']),
      );

      return data;
    } catch (e) {
      throw Exception('Error on fetching: $e');
    }
  }
}
