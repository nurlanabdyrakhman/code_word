

import 'package:flutter/material.dart';

class ViewContainer extends StatelessWidget {
  const ViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(child: Text('Flutter'),
            ),
            Stack(children: [
              Icon(Icons.add),
            ],),
            Text('SS'),
          ],
        ),
      ),
bottomNavigationBar: BottomNavigationBar(items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'evim'),
   BottomNavigationBarItem(icon: Icon(Icons.play_arrow),label: 'uchcak'),
  
]),
  
    );
  }
}