// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:layout/screens/buttons_screen.dart";
import "screens/home_screen.dart";
import "screens/fetch_data_screen.dart";
import "screens/dynamic_appbar.dart";
import "screens/navbar.dart";
import "screens/image_screen.dart";
import "screens/input_screen.dart";
import "screens/badge.view.dart";

void main() => runApp(Layout());

class Layout extends StatelessWidget {
  const Layout(
      {super.key}); // ! keys are used to uniquely identify the widgets in the widget tree;
  // ! crucial for state management and widget updates

  @override

  // ? why do we set context as parameter variable? is it mandatory?
  // ! we pass it to identify the position of the widget in the widget tree and find its parent and ancestors
  // ! yes, it is mandatory as we are overriding the build() method from super class, therefore method signatures must match.
  // ! build method provides access to inherited widgets like mediaquey and theme.
  // ! crucial for navigation related info, state access, layout constraints,etc.
  Widget build(BuildContext context) {
    return MaterialApp(
        // ! material app
        debugShowCheckedModeBanner: false,
        title: "Layout Trial App", // ! title for the app

        // ! home(named param) sets the homescreen for material app
        // home:
        //     HomeScreen(), // ! use HomeScreen() custom widget as the homepage for the material app
        theme: ThemeData(
          useMaterial3: true, // ! use material 3 design
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade900),
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.teal.shade900), // ! set theme for buttons
          appBarTheme: AppBarTheme(
              backgroundColor:
                  Colors.teal.shade900, // ! background color for appbar
              foregroundColor: Colors.white), // ! foreground color for appbar
        ),

        // ! define the initial route,
        initialRoute: '/',

        //  ! define routes
        routes: {
          '/': (context) => HomeScreen(),
          '/buttons': (context) => ButtonRoute(),
          '/fetch_data': (context) => FetchDataRoute(),
          '/appbar': (context) => DynamicAppbar(),
          '/navbar': (context) => Navbar(),
          '/input': (context) => TextFieldRoute(),
          '/image': (context) => ImageRoute(),
          '/badge': (context) => BadgeRoute(),
        });
  }
}
