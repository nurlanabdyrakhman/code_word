import 'package:code_word/101/core_page.dart';
import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  PaddingLearn({
    super.key,
  });
  final text = Text('fff');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('77'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CorePage(),
                  ),
                );
              },
              subtitle: text,
              leading: Icon(Icons.add),
              title: Card(
                color: Colors.white,
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: Center(
                    child: Text(
                      'Salam',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                shape: StadiumBorder(),
              ),
            ),
            Card(
              color: Colors.brown,
              child: SizedBox(
                height: 100,
                width: 300,
                child: Center(
                  child: Text('ff'),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(33),
              ),
            ),
            Card(
              color: Colors.yellow,
              child: SizedBox(
                height: 100,
                width: 300,
              ),
              shape: CircleBorder(),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    color: Colors.pink,
                    height: 200,
                  ),
                ),
                Positioned(
                  height: 55,
                  top: 100,
                  right: 0,
                  left: 0,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
