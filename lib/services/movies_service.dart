import 'dart:convert';

import 'package:api_handling/models/movies/movies.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  String url = 'https://api.themoviedb.org/3/trending/all/day?language=en-US';
  String token =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0MjI4NzczNjJiNmEyZGViOTQyNTFiYTUxMGIxYzg0YSIsInN1YiI6IjY0ZDcxYTA1YmYzMWYyMDFjZDRmMmE5OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.vvcag_UM7M8vpGGTr3acC4_CPp2aFwbXcPbRn3ANIBo';

  Future<dynamic> getMovies() async {
    var response = await http.get(Uri.parse(url), headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      final data = MoviesD.fromJson(result);

      return data;
    } else {
      print('Failed to fetch trending movies: ${response.statusCode}');
    }
  }
}
