import 'package:flutter/material.dart';
import 'package:tenk_robot/lists/EventDetailsList.dart';
import 'package:tenk_robot/widgets/EventCard.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}
class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        elevation: 0.0,
      ),
      body: Container(
        child: ListView( //tried with listwheelscrollview, but cannot detect gesture :(
          children:
            events.map(
              (event)=> EventCard(event: event)
            ).toList(),
        ),
      ),
    );
  }
}
