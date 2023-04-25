import 'package:flutter/material.dart';

class Nurlan extends StatelessWidget {
  
  List<String> products=['Bed','Chared','Muku'];
   List<String>productDetails=['Kanat kanday',' Bala bana kara','Super bari bolot'];
     List<int>price=[3000,2500,2000];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salam'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return  ListTile(
              leading: CircleAvatar(child: Text(products[index][0]),),
              title: Text(products[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),
            );
            
          } ),
      )
       
      ,
    );
  }
}
 