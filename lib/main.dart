
import 'package:code_word/101/app_bar_laern.dart';
import 'package:code_word/101/button_learn.dart';
import 'package:code_word/101/container_size_box_learn.dart';
import 'package:code_word/nurlan.dart';
import 'package:code_word/padding_learn.dart';
import 'package:code_word/view/hame_page.dart';
import 'package:code_word/view/view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(

      ).copyWith(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
       
        )
      ),
      home:HomePage(),
      
    );
  }
}

