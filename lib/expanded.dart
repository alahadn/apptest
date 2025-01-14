import 'package:flutter/material.dart';

/// Flutter code sample for [Expanded].


class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded Column Sample'),
        ),
        body: const ExpandedExample(),
      ),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
            Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              width: 100,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              width: 100,
            ),
          ),
           Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
