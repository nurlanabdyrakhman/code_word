

import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
             prefixIcon: Icon(Icons.mail),
             border: OutlineInputBorder(),
            hintText: 'Mail',
            ),
            
          ),
          TextField(
            decoration: InputDecoration(
             prefixIcon: Icon(Icons.mail),
             border: OutlineInputBorder(),
            hintText: 'Password',
            ),
            
          ),
        ],
      ),
    );
  }
}