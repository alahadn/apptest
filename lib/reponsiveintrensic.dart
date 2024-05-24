import 'package:flutter/material.dart';

class intrensicresponsive extends StatefulWidget {
  const intrensicresponsive({super.key});

  @override
  State<intrensicresponsive> createState() => _intrensicresponsiveState();
}

class _intrensicresponsiveState extends State<intrensicresponsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.blue,
                      width: 150,
                      child: Text('Box 1'),
                    ),
                    Container(
                      color: Colors.green,
                      width: 250,
                      height: 150,
                      child: Text('Box 2\nwith\nmultiple\nlines'),
                    ),
                    Container(
                      color: Colors.orange,
                      width: 75,
                      child: Text('Box 3'),
                    ),
                  ]

                    
                )
              ),
              SizedBox(height: 20),
              
              IntrinsicWidth(
                child: Column(
                  children: [
                    
                    Container(
                      color: Colors.purple,
                      child: Text('This is a really long text that should wrap to multiple lines'),
                    ),
                    Container(
                      color: Colors.red,
                      child: Text('Short text'),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),

           
    );
  }
}