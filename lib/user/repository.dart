import 'package:http/http.dart' as http;
import 'dart:convert';

import 'model.dart';

Future<List<User>> listUsers() async {
  final response = await http.get(
    Uri.parse('https://reqres.in/api/users'),
  );
  if (response.statusCode != 200) throw Exception('Failed to retrieve data');
  Map<String, dynamic> map = json.decode(response.body);
  List<dynamic> data = map['data'];
  return data.map((data) =>
      User.fromJson(data)
  ).toList();
}