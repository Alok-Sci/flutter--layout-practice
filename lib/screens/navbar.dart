// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> navItemsList = [
      {'icon': Icons.mark_unread_chat_alt_outlined, 'title': 'Chats'},
      {'icon': Icons.cameraswitch_outlined, 'title': 'Updates'},
      {'icon': Icons.groups_2_outlined, 'title': 'Communities'},
      {'icon': Icons.phone_outlined, 'title': 'Calls'},
    ];

    final List<Widget> navItemWidgets = navItemsList
        .map((navItem) => Center(
              child: Column(
                children: [
                  TextButton(
                    child: Icon(navItem['icon']),
                    onPressed: () {},
                  ),
                  Text(
                    navItem['title'],
                    style: TextStyle(
                      color: Colors.teal.shade900, 
                      fontFamily: 'Zilla Slab', 
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      ),
                  )
                ],
              ),
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text('Navigation Bar')),
      body: const Center(child: Text('This is Navigation bar example', style: TextStyle(fontFamily: "Zilla Slab"))),
      bottomNavigationBar: NavigationBar(
        destinations: navItemWidgets,
      ),
    );
  }
}
