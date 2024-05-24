// ignore_for_file: unused_label, dead_code, empty_constructor_bodies, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewExampleApp extends StatefulWidget {
  const GridViewExampleApp({super.key});

  @override
  State<GridViewExampleApp> createState() => _GridViewExampleAppState();
}

class _GridViewExampleAppState extends State<GridViewExampleApp> {
  List<Model> images = [
    Model(image: "/images/contact3.jpg", productname: "jinto", price: 100.00),
    Model(image: "/images/contact2.png", productname: "arjun", price: 152.00),

    Model(image: "/images/contact2.png", productname: "jinto", price: 52.00),
    Model(image: "/images/contact3.jpg", productname: "jinto", price: 100.00),
    Model(image: "/images/contact1.jpg", productname: "jinto", price: 100.00),
    Model(image: "/images/contact3.jpg", productname: "jinto", price: 100.00),

    // "/images/contact1.jpg",
    // "/images/contact2.png",
    // "/images/contact3.jpg",
    // "/images/contact1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView(
      //   // scrollDirection: Axis.vertical,
      //   // physics: NeverScrollableScrollPhysics(),
      //   // reverse: true,
      //   children: [
      //     Container(
      //       color: Colors.red,
      //     ),
      //       Container(
      //       color: Colors.green,
      //     ),
      //       Container(
      //       color: Colors.yellow,
      //     ),

      //       Container(
      //       color: Colors.orange,
      //     ),
      //       Container(
      //       color: Colors.blue,
      //     ),  Container(
      //       color: Colors.black,
      //     ),
      //   ],

      //   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      // mainAxisSpacing: 10,
      // crossAxisSpacing: 10)),

      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  // CircleAvatar(
                  //   radius: 20,
                  //   child: Image.asset(
                    
                  //     images[index].image,
                  //     height: 200,
                      
                  //   ),
                  // ),
                  Container(
                    height: 200,
                    width: 200,
                    child: CircleAvatar(
                      
                                    backgroundImage: AssetImage(
                    images[index].image,
                                    ),
                                    radius: 20,
                                    backgroundColor: Colors.indigo,
                                  ),
                  ),
                  Text(images[index].productname),
                  Text(images[index].price.toString()),
                ],
              ),
            );
          }),
    );
  }
}

class Model {
  String image;
  String productname;
  double price;
  Model({required this.image, required this.productname, required this.price});
}
