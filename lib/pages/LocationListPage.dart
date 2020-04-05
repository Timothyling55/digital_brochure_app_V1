import 'package:flutter/material.dart';
import 'package:tenk_robot/lists/LocationDetailsList.dart';
import 'package:tenk_robot/pages/specific_page/LocationPage.dart';

class LocationListPage extends StatefulWidget {
  @override
  _LocationListPageState createState() => _LocationListPageState();
}

class _LocationListPageState extends State<LocationListPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
        elevation: 0.0,
      ),
      body: Container(
        child: Wrap(
          children: location.map(
            (locale) => Container(
              height: height/2.5,
              width: width/2,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => LocationPage(location: locale,)
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image(image: AssetImage(locale.img),),
                      Text(locale.name),
                      Text(locale.block),
                      Text(locale.shortDesc),
                    ],
                  ),
                ),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
