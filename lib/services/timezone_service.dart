import 'dart:convert';

import 'package:api_handling/models/timezone/timezone.dart';
import 'package:http/http.dart' as http;

class ApiServiceTime {
  static const String _baseUrl =
      'https://timeapi.io/api/Time/current/zone?timeZone=';

  Future<dynamic> getTime(String timezone) async {
    Uri uri = Uri.parse('${_baseUrl}$timezone');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      print("success");
      final result = json.decode(response.body);

      var data = Timezone.fromJson(result);
      print(data);

      return data;
    } else {
      print("not success");

      throw Exception('Failed to load json data');
    }
  }
}
