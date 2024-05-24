import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListVieww extends StatefulWidget {
  const ListVieww({super.key});

  @override
  State<ListVieww> createState() => _ListViewState();
}

class _ListViewState extends State<ListVieww> {
  List<Data> lst =[
      Data(colors:Colors.red, title:"Flutter",/*image:"direction" */),
  Data(colors:Color.fromARGB(144, 31, 136, 4), title:"java"),
  Data(colors:Colors.blue, title:"dart"),
  Data(colors:const Color.fromARGB(255, 71, 57, 56), title:"python"),
  Data(colors:const Color.fromARGB(255, 117, 69, 66), title:"c"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview",),backgroundColor: Colors.blue,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
     
          physics: BouncingScrollPhysics(),
          children: List.generate(
            lst.length, (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              height: 100,
              width: 50,
              color: lst[index].colors,
              child: Center(child: Text(lst[index].title),),
              padding: EdgeInsets.all(0.8),
              
            ),
          ),
          ),
        
      )
    );
  }
}
class Data {
  String title;
  Color colors;
  // String image;
  Data({required this.colors,required this.title,/*required this.image*/});
}