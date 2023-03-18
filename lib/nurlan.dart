import 'package:flutter/material.dart';

class Nurlan extends StatelessWidget {
  // const Nurlan({super.key, required this.color, required this.child, required this.elevation});
  // final Color color;
  // final Widget child;
  // final   double elevation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: Text(
        'salam',
        style: TextStyle(color: Colors.black, fontSize: 44),
      )),
    );
  }
}
