


import 'package:flutter/material.dart';

class CycleLearn extends StatefulWidget {
  const CycleLearn({super.key, required this.messeger});
   final String messeger;
  @override
  State<CycleLearn> createState() => _CycleLearnState();
}

class _CycleLearnState extends State<CycleLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.messeger.length.isOdd
        ?Text('Kelime tek'):Text('Kelime chift'),
        
      ),
       body: widget.messeger.length.isOdd
        ?TextButton(onPressed: (){}, child:Text(widget.messeger) ,)
        :ElevatedButton(onPressed: (){}, child: Text(widget.  messeger)),
    );
  }
}