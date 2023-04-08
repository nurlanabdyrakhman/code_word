import 'package:flutter/material.dart';

class CycleLearn extends StatefulWidget {
  const CycleLearn({super.key, required this.messeger});
  final String messeger;
  @override
  State<CycleLearn> createState() => _CycleLearnState();
}

class _CycleLearnState extends State<CycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
     _computeName();
  }
  @override
  void initState() {
    super.initState();
    _message = widget.messeger;
    _isOdd = widget.messeger.length.isOdd;
   _computeName();
  }
  void _computeName() {
     if (_isOdd) {
      _message += 'Cift';
    } else {
      _message += 'Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_message)
      ),
      body: _isOdd
          ? TextButton(
              onPressed: () {
                setState(() {
                 
                });
              },
              child: Text(_message),
            )
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
