import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Repository {
  Future<SuperheroResponse?> fetchSuperHeroInfo(String name) async {
    final response = await http.get(
      Uri.parse(
        "https://superheroapi.com/api/719896113f9702eb247b33e8bfd66950/search/$name",
      ),
    );

    if (response.statusCode == 200) {
      var decodeJson = jsonDecode(response.body);

      SuperheroResponse superheroResponse = SuperheroResponse.fromJson(
        decodeJson,
      );

      return superheroResponse;
    } else {
      return null;
    }
  }
}
