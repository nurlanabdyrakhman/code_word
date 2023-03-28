import 'package:flutter/material.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key, required this.Messege});
 final String Messege;
  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  int count=0;
  int dataBaza=0;
  void _updataCounter(bool isIncrement){
   if(isIncrement){
    count=count+1;
   }else{
  count=count-1;
   }
  }
  
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
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: (){
            setState(() {
              
            });
           _updataCounter(true);
          },
          child: Icon(Icons.add),),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: FloatingActionButton(onPressed: (){
                setState(() {
                  
                });
                _updataCounter(false);
              },
                      child: Icon(Icons.remove),),
            ),
        ],
      ),
      body: PageView(
       
        
        padEnds: false,
        controller: PageController(viewportFraction: 0.7),
        children: [
         
         
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4TnB_jtFtLEj1PB_m9gyOeebdPtTYcbbPsg&usqp=CAU'),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Expanded(
                    child: SizedBox(
                      width: 200,
                      height: 100,
                      child: Card(
                        
                      shape: StadiumBorder(),
                        color: Colors.blue,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                             
                            },
                            child: Text(
                            count.toString(),
                              style: TextStyle(color: Colors.white, fontSize: 33),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
