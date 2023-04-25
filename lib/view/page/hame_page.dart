import 'dart:developer';

import 'package:code_word/101/core_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _bagroundColor = Colors.transparent;
  void changeBacgroundColor(Color color) {
    setState(() {
      _bagroundColor = color;
      inspect('GG');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        flexibleSpace: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ9dz3a-yebsM1VP6JhDCnxCvvg1D7mDs1Qg&usqp=CAU',
        ),
      ),

      backgroundColor: _bagroundColor,

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == Mycolors.red.index) {
            changeBacgroundColor(Colors.red);
          } else if (value == Mycolors.yellow.index) {
            changeBacgroundColor(Colors.yellow);
          } else if (value == Mycolors.blue.index) {
            changeBacgroundColor(Colors.blue);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.red,
              ),
              label: 'red'),
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.yellow,
              ),
              label: 'yellow'),
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.blue,
              ),
              label: 'blue'),
        ],
      ),

      //drawer: Drawer(backgroundColor: Colors.cyan,),
      body: ListView(children: [
        Center(
          child: Card(
            child: Text(
              'RR',
            ),
            shadowColor: Colors.black,
          ),
        )
      ]),
    );
  }
}

enum Mycolors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
 
   
// void initState() {
//     super.initState();
//     _items = [
//       ColloctionModel(
//           ImagePath: 'assets/travel.jpeg', title: 'Flutter1', price: 3.4),
//       ColloctionModel(
//           ImagePath: 'assets/travel.jpeg', title: 'Flutter2', price: 3.4),
//       ColloctionModel(
//           ImagePath: 'assets/travel.jpeg', title: 'Flutter3', price: 3.4)
//     ];
//   }
    