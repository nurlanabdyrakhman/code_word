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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.mail,color: Colors.green,)),
          Text('Iconu bas')
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: SizedBox(
                width: 200,
                height: 100,
                child: Card(
                  
                shape: StadiumBorder(),
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'bbb',
                      style: TextStyle(color: Colors.white, fontSize: 33),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
