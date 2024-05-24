// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';

class responsivetask extends StatefulWidget {
  const responsivetask({super.key});

  @override
  State<responsivetask> createState() => _responsivetaskState();
}

class _responsivetaskState extends State<responsivetask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*
//this is using orientation(portrait or landscape)
 OrientationBuilder(builder: (context, orientation) {
            final isportrait = orientation == Orientation.portrait;
            if (!isportrait) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                  )),
                  SizedBox(
                    height: 0,
                  ),
                ],
              );
            } else {
              return Container(
                color: Colors.blue,
              );
            }
          })*/



      //this is using mediaquery (width /hieght)
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 510) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  width: 500,
                )),
                SizedBox(
                  height: 0,
                ),
              ],
            );
          } else if (constraints.maxWidth < 810) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.green,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.blue,
                    )),
                SizedBox(
                  height: 0,
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.orange,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 0,
                ),
              ],
            );
          }
          ;
        },
      ),
    );
  }
}
