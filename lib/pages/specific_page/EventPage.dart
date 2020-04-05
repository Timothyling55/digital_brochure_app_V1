import 'package:flutter/material.dart';
import 'package:tenk_robot/Classes/EventDetails.dart';

class EventPage extends StatefulWidget {
  final EventDetails event;
  EventPage ({this.event});
  @override
  _EventPageState createState() => _EventPageState(event: event);
}

class _EventPageState extends State<EventPage> {
  EventDetails event;
  _EventPageState ({this.event});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(event.title),
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Container(
                      child: Image(
                        image: AssetImage(event.img,),),
                      ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Column(
                    children: <Widget>[
                      Text(event.date, style: TextStyle(fontSize: 40)),
                      Text(event.time, style: TextStyle(fontSize: 40)),
                      Text(event.place, style: TextStyle(fontSize: 40)),
                      Text(event.desc, style: TextStyle(fontSize: 30)),
                    ],
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

