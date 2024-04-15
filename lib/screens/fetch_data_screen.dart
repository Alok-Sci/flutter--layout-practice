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
      'https://jsonplaceholder.typicode.com/albums'; // ! initialize the url to be used for sending request

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
          title: Text('Fetch Data from API')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: //ListView(
            //   children: [
            //     ListTile(
            //       leading: Icon(Icons.person_add),
            //       title: Text('This is Static title'),
            //       subtitle: Text('This is subtitle'),
            //     ),
            //     SizedBox(height: 20),
            //     ListTile(
            //       leading: Icon(Icons.person_add),
            //       title: Text('This is Static item'),
            //       subtitle: Text('This is subtitle'),
            //     ),
            //     SizedBox(height: 20),
            //     ListTile(
            //       // shape: CircleBorder(eccentricity: 2.3),
            //       tileColor: Colors.teal.shade100,
            //       visualDensity: VisualDensity(horizontal: 2.3),
            //       leading: Icon(Icons.person_add),
            //       title: Text('This is Static item'),
            //       subtitle: Text('This is subtitle'),
            //     ),
            FutureBuilder<List<User>>(
          // ! FutureBuilder associated with the User class
          future: futureUsers,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // return ListTile( // ! for generating single widget 
              //   leading: Icon(Icons.person_add_alt),
              //   title: Text(snapshot.data!.id.toString()),
              //   subtitle: Text(
              //     snapshot.data!.title,
              //   ),
              // );
              // return ListView.builder( // ! to generate multiple widgets
              //   itemCount: snapshot.data!.length,
              //   itemBuilder: (context, index) {
              //     User user = snapshot.data![index];
              //     return ListTile(
              //       leading: Icon(Icons.person_add_alt),
              //       title: Text(user.id.toString()),
              //       subtitle: Text(user.title),
              //     );
              //   },
              // );
            }
            // if (snapshot.hasData) {
            //   return Text(snapshot.data!.userId.toString());
            // }
            else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black)));
          },
        ),
      ),
    );
  }
}
