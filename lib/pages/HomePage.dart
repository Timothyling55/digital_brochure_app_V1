import 'package:flutter/material.dart';
import 'package:tenk_robot/widgets/HomeSlideCard.dart';
import 'package:tenk_robot/widgets/EventCard.dart';
import 'package:tenk_robot/widgets/NavigationDrawer.dart';
import 'package:tenk_robot/Lists/EventDetailsList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Highlighted events', style: TextStyle(fontSize: 30),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: width/6),
                      Row(
                        children:
                          events.map((event){
                            if (event.isHighlight)
                              return HomeSlideCard(event: event);
                            else return SizedBox(height: 0, width: 0);
                          }).toList(),
                      ),
                      SizedBox(width: width/6),
                    ]
                  )
                ),
              ],
            ),
          ),

          Text(
            'What\'s next?',
            style: TextStyle(
                fontSize: 30
            )
          ),

          Container(
            height: 400,
            width: width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: events.map((event) => EventCard(event: event)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
