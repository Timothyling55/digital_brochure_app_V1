import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SpinKitCircle(
              color: Colors.white,
              size: 200
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('assets/estcon.jpg'),
              height: 200,
              width: 400,
            ),
          ],
        ),
    );
  }
}
