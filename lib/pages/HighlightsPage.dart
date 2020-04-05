import 'package:flutter/material.dart';
import 'package:tenk_robot/lists/EventDetailsList.dart';
import 'package:tenk_robot/widgets/EventCard.dart';

class HighlightsPage extends StatefulWidget {
  @override
  _HighlightsPageState createState() => _HighlightsPageState();
}

class _HighlightsPageState extends State<HighlightsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Highlighted events'),
        elevation: 0.0,
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:
              events.map(
                (event)=>EventCard(event: event)
              ).toList(),
          ),
        ),
      ),
    );
  }
}
