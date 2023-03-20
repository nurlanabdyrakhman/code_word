import 'package:code_word/nurlan.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nurlan(),),);
          },
          child: Icon(Icons.favorite,color: Colors.red,),
        ),
      ),
    );
  }
}
