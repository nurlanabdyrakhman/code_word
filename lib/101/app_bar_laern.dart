import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  AppBarLearn({super.key});

  final String _title = 'Hello';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: [
          Icon(
            Icons.do_disturb,
          ),
          // CircularProgressIndicator(color: Colors.pink,)
        ],
      ),
      body: Column(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          Expanded(
             
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2mCA7KafUIa0AwTsgz2CUl2LWRQm0K80vCw&usqp=CAU',
                    ),
                  ),
                   Positioned.fill(
                    child: Image.network(
                      'https://i.morioh.com/2021/10/08/538d5e03.webp',
                    ),
                  ),
                ],
              ),),
        ],
      ),
    );
  }
}
