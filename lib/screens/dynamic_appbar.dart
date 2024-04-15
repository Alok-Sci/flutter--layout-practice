import "package:flutter/material.dart";

class DynamicAppbar extends StatelessWidget {
  const DynamicAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> actions = [
      Icons.camera_alt_outlined,
      Icons.search,
      Icons.more_vert,
    ];

    final List<Widget> actionWidgets = actions
        .map(
          (action) => Padding(
            // padding: EdgeInsets.only(right: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(action),
          ),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Whatsapp"),
        actions: actionWidgets,
      ),
    );
  }
}
