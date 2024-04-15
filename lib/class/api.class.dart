import "package:http/http.dart" as http;
import "dart:convert" as convert;
import "dart:async";

import "../models/user.model.dart";

// main() => print(fetchData('https://jsonplaceholder.typicode.com/albums/1'));

// Future<User> fetchData(String url) async {
//   final response = await http.get(Uri.parse(url));
//   final jsonData = User.fromJson(convert.jsonDecode(response.body));
//   return jsonData;
// }

Future<List<User>> fetchData(String url) async {
  final response = await http.get(Uri.parse(url));
  final List<dynamic> jsonData = convert.jsonDecode(response.body);
  final List<User> users = jsonData.map((item) => User.fromJson(item)).toList();
  return users;
}
