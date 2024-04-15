// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
// import "buttons_screen.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  // ! Sets the root widget in the widget tree
  Widget build(BuildContext context) {
    final List<String> drawerItemTitlesList = [
      'Home',
      'Buttons',
      'Fetch Data',
      'Dynamic Appbar',
      'Navbar',
      'Image',
      'Input',
      'Badge',
    ];

    final List<IconData> drawerItemIconsList = [
      Icons.home,
      Icons.bento_rounded,
      Icons.data_object,
      Icons.app_registration_rounded,
      Icons.view_list_rounded,
      Icons.image,
      Icons.input,
      Icons.notifications,
    ];

    final List<String> drawerItemRoutesList = [
      '/',
      '/buttons',
      '/fetch_data',
      '/appbar',
      '/navbar',
      '/image',
      '/input',
      '/badge',
    ];

    // print(drawerItemRoutesList.length);
    // print(drawerItemIconsList.length);
    // print(drawerItemTitlesList.length);

    final List<Map<String, dynamic>> drawerItems = [];

    for (var i = 0; i < drawerItemTitlesList.length; i++) {
      drawerItems.add({
        'title': drawerItemTitlesList[i],
        'icon': drawerItemIconsList[i],
        'route': drawerItemRoutesList[i],
      });
    }
    // print(drawerItems[1]['title']);

    final Drawer menu = Drawer(
      backgroundColor: Colors.white,
      child:
          // ListView.builder(
          //   itemCount: drawerItems.length,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       leading: Icon(
          //         drawerItems[index]['icon'],
          //       ),
          //       title: Text("${drawerItems[index]['title']}"),
          //       trailing: Icon(Icons.chevron_right),
          //       onTap: () {
          //         Navigator.pushNamed(context, drawerItems[index]['route']);
          //       },
          //     );
          //   },
          ListView(
        children: [
          for (var i = 0; i < drawerItems.length; i++)
            ListTile(
              leading: Icon(
                drawerItems[i]['icon'],
              ),
              title: Text("${drawerItems[i]['title']}"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, drawerItems[i]['route']);
              },
            ),
        ],
      ),
    );

    return Scaffold(
      drawer: menu,
      endDrawer: menu,
      appBar: AppBar(
        centerTitle: true, // ! centers the title
        // leading: IconButton(
        //   icon: Icon(Icons.menu_sharp),
        //   onPressed: () {
        //     print("Pressed menu button");

        //     // @override
        //     // showDialog() {
        //     //   AlertDialog(icon: Icon(Icons.crisis_alert));
        //     // }

        //     // showDialog();
        //   },
        // ), // ! a widget to display before title
        title: Text(
          "H O M E", // ! sets the title for the appbar
          style: TextStyle(fontFamily: "Poppins"), // ! set the font for title
        ),
        // backgroundColor: Colors.blueGrey[900], // ! sets the background color for the appbar
      ),
      body: Center(
        child: OutlinedButton(
          // ! creates and button having an outline
          child: Text("Buttons"),
          onPressed: () {
            // ! on button press trigger this callback function

            // ! push the route to navigator stack
            // Navigator.push( // ! takes two positional params (context, route)
            //   context, // ! closely related context
            //   MaterialPageRoute(
            //     builder: (context) => ButtonRoute(), // ! buillder is mandatory for this widget
            //   ),
            // );

            // ! push the named route to the navigator stack
            Navigator.pushNamed(context, '/buttons');
          },
        ),
      ),
    );
  }
}
