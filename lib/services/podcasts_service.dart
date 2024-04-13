import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:api_handling/models/podcasts/pod.dart';

class APIService {
  static const String _baseUrl =
      "https://spotify23.p.rapidapi.com/podcast_episodes/?id=0ofXAdFIQQRsCYj9754UFx&offset=0&limit=50";

  static const Map<String, String> _headers = {
    "x-rapidapi-key": "f2d7517392msh921bb4c30ff35aap117fdbjsnfd9c97cabb3c",
    "x-rapidapi-host": "spotify23.p.rapidapi.com",
  };

  Future<dynamic> getPodcasts() async {
    Uri uri = Uri.parse(_baseUrl);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      //print("success");
      final res = json.decode(response.body);

      var demo = Pod.fromJson(res);

      return demo;
    } else {
     // print("not success");

      throw Exception('Failed to load json data');
    }
  }
}
