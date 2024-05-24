import 'package:flutter/material.dart';

class layoutbuilder extends StatefulWidget {
  const layoutbuilder({super.key});

  @override
  State<layoutbuilder> createState() => _layoutbuilderState();
}

class _layoutbuilderState extends State<layoutbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <510) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "skjdflishfdjdshfskfhksdhfhfsjdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffak"),
            ],
          );
        } else {
          return Center(
            child: Column(
              children: [
                 Container(
                  height: 400,
                  width: 500,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("skjdflishfdjdshfskfhksdhfhfsjdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffak"),
                
              ],
            ),
       
        
          );
        }
      }),
    );
  }
}
