import 'package:flutter/material.dart';
import 'package:tenk_robot/Classes/DrawerItems.dart';
import 'package:tenk_robot/pages/HomePage.dart';
import 'package:tenk_robot/pages/SchedulePage.dart';
import 'package:tenk_robot/pages/LocationListPage.dart';
import 'package:tenk_robot/pages/HighlightsPage.dart';
List <DrawerItems> drawerItems = [
  DrawerItems(pageName: 'Home', pageIcon: Icon(Icons.dashboard, size: 40, color: Colors.white), pagePushed: HomePage(),),
  DrawerItems(pageName: 'Highlights', pageIcon: Icon(Icons.info, size: 40, color: Colors.white), pagePushed: HighlightsPage(),),
  DrawerItems(pageName: 'Schedule', pageIcon: Icon(Icons.access_time, size: 40, color: Colors.white), pagePushed: SchedulePage(),),
  DrawerItems(pageName: 'Location', pageIcon: Icon(Icons.location_on, size: 40, color: Colors.white), pagePushed: LocationListPage(),),
  //Dashboard(item: 'Credits', icon: Icon(Icons.movie, size: 40, color: Colors.white), itemPage: ,),
];