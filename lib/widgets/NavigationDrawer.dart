import 'package:flutter/material.dart';
import 'package:tenk_robot/Lists/DrawerItemsList.dart';
import 'package:tenk_robot/widgets/DrawerItemContainer.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/event_images/placeholder.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Navigation',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
                Column(
                children: drawerItems.map(
                  (item) => DrawerItemContainer(item: item)).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
