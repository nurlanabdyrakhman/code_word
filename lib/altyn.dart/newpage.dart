import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("менин тиркемем")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.mail),
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                color: Colors.cyan,
              ),
            )
          ],
        ),
      ),
    );
  }
}
