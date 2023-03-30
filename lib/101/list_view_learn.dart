import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
   ListViewLearn({super.key});
   
  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  int conter=110;
  late final List <ColloctionModel>_items;
  @override
  void initState() {
    super.initState();
   _items=[
    ColloctionModel(ImagePath: 'assets/travel.jpeg', title: 'Flutter1', price: 3.4),
     ColloctionModel(ImagePath: 'assets/travel.jpeg', title: 'Flutter2', price: 3.4),
      ColloctionModel(ImagePath: 'assets/travel.jpeg', title: 'Flutter3', price: 3.4)
   ];
  }
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
            
              child: SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                 Expanded(child: Image.asset(_items[index].ImagePath)),
                 Row(children: [
                  Text(_items[index].title),
                  Text('${_items[index].price}eth'),
                 ],)
                ],),
              ),
            ));
          },
             ),
       );
    
  }
}
class ColloctionModel{
  final String ImagePath;
  final String title;
  final double price;

  ColloctionModel({required this.ImagePath, required this.title, required this.price});
}