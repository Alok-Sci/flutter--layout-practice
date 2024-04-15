// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class ButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ElevatedButton elevatedBtn = ElevatedButton(
        child: Text("Elevated"),
        onPressed: () => print("pressed elevated button"));

    final TextButton textBtn = TextButton(
        child: Text("Text"), onPressed: () => print("pressed text button"));

    final FilledButton filledBtn = FilledButton(
        child: Text("Filled Tonal"),
        onPressed: () => print("pressed filled button"));

    final FilledButton filledTonalBtn = FilledButton.tonal(
        child: Text("Filled"),
        onPressed: () => print("pressed filled tonal button"));

    final OutlinedButton outlinedBtn = OutlinedButton(
        child: Text("Outlined"),
        onPressed: () => print("pressed outlined button"));

    final IconButton iconBtn = IconButton(
      icon: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.biotech_rounded),
            Text("Icon Button",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: 'Roboto',
                ))
          ]),
      tooltip: 'I am icon button',
      onPressed: () => print("pressed icon button"),
      isSelected: true,
      padding: EdgeInsets.symmetric(horizontal: 20),
    );

// ! create an array/ List of buttons
    List<Widget> buttons = [
      elevatedBtn,
      filledBtn,
      filledTonalBtn,
      outlinedBtn,
      textBtn,
      iconBtn
    ];

// ! return material app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("B U T T O N S"),
          leading: IconButton(
            icon: Icon(Icons.chevron_left_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.teal.shade900,
          foregroundColor: Colors.white,

          // backgroundColor: ThemeData(Theme.of(context),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 200, 0, 50),
            child: Column(children: buttons),
          ),
        ),
      ),
    );
  }
}
