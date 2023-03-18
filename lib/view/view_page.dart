import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.favorite,color: Colors.red,),
      ),
    );
  }
}
