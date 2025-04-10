// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/user.model.dart';
import '../class/api.class.dart';

class FetchDataRoute extends StatefulWidget {
  const FetchDataRoute({super.key});

  @override
  State<FetchDataRoute> createState() => _FetchDataRouteState();
}

class _FetchDataRouteState extends State<FetchDataRoute> {
  String url =
      'https://jsonplaceholder.typicode.com/users'; // ! initialize the url to be used for sending request

  late Future<List<User>> // ! Future associated with the user class
      futureUsers; // ! declare a future type late variable

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

// ! send http request and get the response; (api.class.dart)
    futureUsers = fetchData(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.data_array_rounded),
        centerTitle: true,
        title: Text('Fetch Data from API'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: FutureBuilder<List<User>>(
          // ! FutureBuilder associated with the User class
          future: futureUsers,
          builder: (context, snapshot) {
            // ! handle loading state
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                ),
              );
            }
            // ! handle error state
            else if (snapshot.hasError) {
              return Center(child: Text("${snapshot.error}"));
            }
            // ! handle data fetching success state
            else if (snapshot.hasData) {
              return Column(
                children: [
                  // ! for generating single widget
                  ListTile(
                    leading: Icon(Icons.person_add_alt,
                        color: Colors.white, size: 24),
                    title: Text(
                      "U S E R S",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "List of users",
                      style: TextStyle(
                        color: Colors.white.withAlpha(80),
                      ),
                    ),
                    tileColor: Colors.teal.shade900,
                  ),

                  Spacer(),

                  // ! to generate multiple widgets
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade900)),
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.take(5).length,
                      itemBuilder: (context, index) {
                        User user = snapshot.data![index];
                        return ListTile(
                          leading: Icon(Icons.person_add_alt),
                          title: Text(user.id.toString()),
                          subtitle: Text(user.name),
                        );
                      },
                    ),
                  ),
                  // ! Expand to all the available space
                  Spacer(),
                  // ! to generate multiple widgets
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade900)),
                    height: 300,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.sublist(6, 10).length,
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.teal.shade900,
                      ),
                      itemBuilder: (context, index) {
                        User user = snapshot.data![index];
                        return ListTile(
                          leading: Icon(Icons.person_add_alt),
                          title: Text(user.id.toString()),
                          subtitle: Text(user.name),
                        );
                      },
                    ),
                  )
                ],
              );
            }
            // ! handle no data state
            else {
              return Center(
                child: Text("No data found"),
              );
            }
          },
        ),
      ),
    );
  }
}
