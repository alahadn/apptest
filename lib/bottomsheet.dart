// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_page/alertbox.dart';
import 'package:login_page/bottomsheettextfield.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet({super.key});

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.photo),
                                    title: Text("photo"),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.photo),
                                    title: Text("photo"),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.photo),
                                    title: Text("photo"),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.photo),
                                    title: Text("photo"),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return bottomsheettextfield();
                                          },
                                        ));
                                      },
                                      child: Text("bottomsheet textfield")
                                      ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Text("bottomsheet")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
