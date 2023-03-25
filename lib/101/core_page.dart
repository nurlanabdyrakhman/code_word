import 'package:flutter/material.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'bbb',
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
      ),
    );
  }
}
