import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenk_robot/Classes/LocationDetails.dart';
import 'package:tenk_robot/widgets/EventCard.dart';
import 'package:tenk_robot/Lists/EventDetailsList.dart';

class LocationPage extends StatefulWidget {
  final LocationDetails location;
  LocationPage ({this.location});
  @override
  _LocationPageState createState() => _LocationPageState(location: location);
}

class _LocationPageState extends State<LocationPage> {
  LocationDetails location;
  _LocationPageState ({this.location});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget> [
            SliverAppBar(
              title: Text(location.name),
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Container(
                      child: Image(image: AssetImage(location.img),),
                    ),
                  ),
                ),
              ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Text(location.desc),
                Text('Events here: '),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: events.map((event)
                    {
                      if (event.place == location.block)
                        return EventCard(event: event);
                      else return SizedBox(height: 0, width: 0);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          ]
        ),
      ),
    );
  }
}
