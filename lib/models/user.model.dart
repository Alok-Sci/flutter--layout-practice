// To parse this JSON data, do
//
//     final User = UserFromJson(jsonString);


// List<User> userFromJson(String str) =>
//     List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

// String userToJson(List<User> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  final int userId;
  final int id;
  final String title;

// constructor
  User({
    required this.userId,
    required this.id,
    required this.title,
  });

// factory constructor
// ! assign key values from json map to the corresponding variables
  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

// ! use existing values and create a map
  // Map<String, dynamic> toJson() => {
  //       "userId": userId,
  //       "id": id,
  //       "title": title,
  //     };
}
