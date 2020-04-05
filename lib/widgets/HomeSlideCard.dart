import 'package:flutter/material.dart';
import 'package:tenk_robot/Classes/EventDetails.dart';
import 'package:tenk_robot/pages/specific_page/EventPage.dart';

class HomeSlideCard extends StatefulWidget {
  final EventDetails event;
  HomeSlideCard({this.event});
  @override
  _HomeSlideCardState createState() => _HomeSlideCardState(event: this.event);
}

class _HomeSlideCardState extends State<HomeSlideCard> {
  final EventDetails event;
  _HomeSlideCardState({this.event});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EventPage(event: event,),
            ),
          );
        },
        child: Container(
          child: Image(
            fit: BoxFit.fitHeight,
            image: AssetImage(event.img),
          ),
        ),
      ),
    );
  }
}
