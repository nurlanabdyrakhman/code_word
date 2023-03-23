import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'a',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return Colors.white;
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.cable)),
            FloatingActionButton(
              onPressed: () {},
              child: Text('bjhk'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Icon(Icons.home),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.yellow, shape: CircleBorder()),
            ),
            InkWell(
              onTap: () {},
              child: Text('55'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.fast_forward),
              label: Text('66'),
            ),
            
          ],
        ),
      ),
    );
  }
}
