import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listviewbuilder extends StatefulWidget {
  const listviewbuilder({super.key});

  @override
  State<listviewbuilder> createState() => _listviewbuilderState();
}

class _listviewbuilderState extends State<listviewbuilder> {
  List<Data> cnt = [
    Data(
      colors: Colors.red,
      title: "Flutter",
      image: "/images/contact1.jpg",
    ),
    Data(
        colors: Color.fromARGB(144, 31, 136, 4),
        title: "java",
        image: "/images/contact1.jpg"),
    Data(
        colors: Colors.blue,
        title: "dart", 
        image: "/images/contact2.png"),
    Data(
        colors: const Color.fromARGB(255, 71, 57, 56),
        title: "python",
        image: "/images/contact3.jpg"),
    Data(
        colors: const Color.fromARGB(255, 117, 69, 66),
        title: "c",
        image: "/images/contact1.jpg",
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listviewbuilder"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: ListTile(
              
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  cnt[index].image,
                ),
                radius: 20,
                backgroundColor: Colors.indigo,
              ),
              title: Text(
                cnt[index].title,
              ),
              subtitle: Text(
                cnt[index].title,
              ),
            ),
          );
        },
      ),
    );
  }
}

class Data {
  String title;
  Color colors;
  String image;
  Data({required this.colors, required this.title, required this.image});
}
