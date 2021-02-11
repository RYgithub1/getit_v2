import 'dart:convert';
import 'package:getit_v2/data/meme.dart';
import 'package:http/http.dart' as http;
// import 'dart:core';




class Repository {
  Future<Meme> getMeme() async {
    http.Response response = await http.get("https://some-random-api.ml/meme");
    Map<String, dynamic> singleMemeJson = jsonDecode(response.body);
    // String singleMemeJson = jsonDecode(response.body);
    return Meme.fromJson(singleMemeJson);
  }


}
