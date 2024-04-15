// // ignore_for_file: avoid_print

// import "dart:convert" as convert; // ! consists of encoders and decoders for different data representation

// import "package:http/http.dart" as http;

// void main() async {
// // ! create a uri
//   Uri url = Uri.http('reqres.in');
//   Uri urlWithPath = Uri.https(
//       'reqres.in', '/api/users'); // ! sending https request to the api endpoint
//   Uri urlWithQuery = Uri.http('reqres.in', '/api/users', {'page': '2'});
//   // print(url);
//   // print(urlWithPath);
//   // print(urlWithQuery);

// // ! send a get request
//   // Uri getUri = Uri.https('reqres.in', '/api/users', {'page': '2'});
//   // var response = await http.get(getUri); // ! sending get request to the api endpoint with query parameter

// // ! http.get() returns a Future containing response
//   var response = await http.get(Uri.parse(
//       // ! creates a new Uri object by parsing it
//       "https://reqres.in/api/users?page=2")); // ! sending get request to the api endpoint with query parameter

// // ! send a post request
//   // var response = await http.post(urlWithPath, body: {
//   //   'name': 'alok',
//   //   'job': 'trainee'
//   // }); // ! sending request with post data

// // ! get response information
//   // print(response.statusCode); // ! returns server response status code
//   // print(response.body); // ! returns repsonse body
//   // print(response.bodyBytes); // ! returns repsonse body bytes
//   // print(response.contentLength); // ! returns the length of content in response
//   print(response.reasonPhrase); // ! returns the status message
//   // print(response.headers); // ! returns http headers
//   print(response
//       .request); // ! returns HTTP request method and URL to which the request is sent
//   // print(response.isRedirect); // ! returns boolean value if the page is redirected or not.

// // ! sends an http get request to the specified url with specified headers
//   // print(await http.read(Uri.parse('https://reqres.in/api/users?page=2')));

// // ! convert the response into json
//   // dynamic jsonRes = convert.jsonDecode(response.body) as Map<String, dynamic>;
//   dynamic jsonRes = convert.jsonDecode(response.body);
//   // print(jsonRes);

//   // print(jsonRes.runtimeType); // ! type of variable during runtime
//   // print((jsonRes.keys).runtimeType); // ! returns keys
//   // print(jsonRes.values); // ! returns all the values
// }
