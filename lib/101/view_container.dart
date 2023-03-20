

import 'package:flutter/material.dart';

class ViewContainer extends StatelessWidget {
  const ViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Text('SS'),
bottomNavigationBar: BottomNavigationBar(items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'evim'),
   BottomNavigationBarItem(icon: Icon(Icons.play_arrow),label: 'uchcak'),
  
]),
  
    );
  }
}