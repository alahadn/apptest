import 'package:flutter/material.dart';

class aaa extends StatefulWidget {
  const aaa({super.key});

  @override
  State<aaa> createState() => _aaaState();
}

class _aaaState extends State<aaa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
          children: [
            Text("Signup page"),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Bottomnavigation');
                },
                child: Text("BottomNavigationBar")),
                 TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/drawer');
                },
                child: Text("drawer")),
                  TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tapbar');
                },
                child: Text("tapbar")),
                  TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/RadioListTileExample');
                },
                child: Text("RadioListTileExample")),
                 TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ListView');
                },
                child: Text("ListView")),
                   TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listviewbuilder');
                },
                child: Text("listviewbuilder")),
                   TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listviewbuildersaparate');
                },
                child: Text("listviewbuildersaparate")),
                   TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ReorderableExample');
                },
                child: Text("ReorderableExample")),
                        TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listviewbuilderwithsearch');
                },
                child: Text("listviewbuilderwithsearch")),
                      TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/GridViewExampleApp');
                },
                child: Text("GridViewExampleApp")),
                TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/staggeredgrid');
                },
                child: Text("staggeredgrid")),
                 TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/alertbox');
                },
                child: Text("alertbox")),
                   TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkbox');
                },
                child: Text("checkbox")),
                      TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/snackbar');
                },
                child: Text("snackbar")),
                           TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bottomsheet');
                },
                child: Text("bottomsheet")),
                   TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/expansionpanel');
                },
                child: Text("expansionpanel")),
                 TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/intrensicresponsive');
                },
                child: Text("intrensicresponsive")),
                 TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ExpandedApp');
                },
                child: Text("ExpandedApp")),
                   TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/layoutbuilder');
                },
                child: Text("layoutbuilder")),
                 TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/responsivetask');
                },
                child: Text("responsivetask")),
                   TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/task2');
                },
                child: Text("task2")),
                   
                   
          ],
        ),
    );
  }
}