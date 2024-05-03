import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

Future<List<Album>> listAlbums() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
  );
  if (response.statusCode != 200) throw Exception('Failed to retrieve data');
  List<dynamic> data = json.decode(response.body);
  return data.map((data) =>
      Album.fromJson(data)
  ).toList();
}