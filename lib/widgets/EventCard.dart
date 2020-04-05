//Used in homepage what's next section

import 'package:flutter/material.dart';
import 'package:tenk_robot/Classes/EventDetails.dart';
import 'package:tenk_robot/pages/specific_page/EventPage.dart';

class EventCard extends StatefulWidget {
  final EventDetails event;
  EventCard({this.event});
  @override
  _EventCardState createState() => _EventCardState(event: event);
}

class _EventCardState extends State<EventCard> {
  EventDetails event;
  _EventCardState({this.event});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EventPage(event: event)),
        );
        },
        child: Card(
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      Text(event.time),
                      Text(event.date),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(event.title, style: TextStyle(fontSize: 20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.location_on, size: 20,),
                        Text(event.place, style: TextStyle(fontSize: 20),),
                      ]
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
