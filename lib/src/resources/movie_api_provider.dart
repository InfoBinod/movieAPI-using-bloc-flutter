import 'dart:async';
import 'package:blocpatternimplementation/src/models/trailer_model.dart';
import 'package:http/http.dart' show Client;

import 'dart:convert';

import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'b9838094d5459a3d848c05b2ad6ce956';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<TrailerModel> fetchTrailer(int movieId) async {
    final response = await client.get("$_baseUrl/popular?api_key=$_apiKey");
    if (response.statusCode == 200) {
      return TrailerModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load trailers');
    }
  }
}
