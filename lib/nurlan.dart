import 'package:flutter/material.dart';

class Nurlan extends StatelessWidget {
  // const Nurlan({super.key, required this.color, required this.child, required this.elevation});
  // final Color color;
  // final Widget child;
  // final   double elevation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.cyan,
              child: Text(
                'salam',
                style: TextStyle(color: Colors.black, fontSize: 44),
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 55),
             child: Card(
               color: Colors.yellowAccent,
              child: Text(
                'salam',
                style: TextStyle(color: Colors.black, fontSize: 44),
              ),
                     ),
           ),
        ],
      ),
    );
  }
}
