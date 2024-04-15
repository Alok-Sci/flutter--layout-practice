import 'package:flutter/material.dart';

class BadgeRoute extends StatelessWidget {
  const BadgeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badges Example'),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          for (var i = 0; i < 4; i++)
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.notifications, size: 35),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          constraints: BoxConstraints(minHeight: 12, minWidth: 12),
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "3",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            Text('Title')
              ],
            ),
        ],
      ),
    );
  }
}
