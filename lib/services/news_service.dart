import 'dart:convert';

import 'package:api_handling/models/news/news.dart';
import 'package:http/http.dart' as http;

class ApiService2 {
  static const String _baseUrl =
      'https://newsapi.org/v2/everything?q=keyword&apiKey=e7050681b3294a389febea2a4f05a05f';

  Future<dynamic> getNews() async {
    Uri uri = Uri.parse(_baseUrl);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      print("success");
      final result = json.decode(response.body);

      var data = News.fromJson(result);

      return data;
    } else {
      print("not success");

      throw Exception('Failed to load json data');
    }
  }
}
