import 'package:flutter/material.dart';
import 'package:tenk_robot/pages/LoadingPage.dart';
import 'package:tenk_robot/pages/HomePage.dart';
import 'package:tenk_robot/widgets/NavigationDrawer.dart';
import 'package:tenk_robot/pages/HighlightsPage.dart';
import 'package:tenk_robot/pages/SchedulePage.dart';
import 'package:tenk_robot/pages/LocationListPage.dart';
import 'package:tenk_robot/pages/specific_page/EventPage.dart';
import 'package:tenk_robot/pages/specific_page/LocationPage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes:{
    '/': (context) => HomePage(),
    '/loading': (context) => Loading(),
    '/eventhighlight': (context)=> HighlightsPage(),
    '/schedule': (context) => SchedulePage(),
    '/location': (context) => LocationListPage(),
    '/eventpage': (context) => EventPage(),
    '/locationpage': (context) => LocationPage(),
  },
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.yellow[100],
    ),
  ),
);

