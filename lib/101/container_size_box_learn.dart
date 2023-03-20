
import 'package:flutter/material.dart';

class ContainerSizeBoxLearn extends StatelessWidget {
  const ContainerSizeBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
    
      actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.car_crash),
      )],
     ),
     body: Center(child: Text('hello ',style: TextStyle(fontSize: 44),)),
  floatingActionButton: FloatingActionButton(child: Text(''),onPressed: (){},),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
bottomSheet: Text('nlcbnjnvm'),
drawer: Drawer(),
     bottomNavigationBar: BottomNavigationBar(
     backgroundColor: Colors.cyan,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.pink),
      label: 'nurlan',),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'hh'),
     ],
     ),
     
    );
  }
}
