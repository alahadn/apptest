import 'package:flutter/material.dart';

class expansionpanel extends StatefulWidget {
  const expansionpanel({super.key});

  @override
  State<expansionpanel> createState() => _expansionpanelState();
}

class _expansionpanelState extends State<expansionpanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ExpansionTile(
              title: Text("user $index"),
              maintainState: true,
              
              children: [
                Text("name : user $index"),
                Text("phone no : user $index"),
                const Text("isAdmin : no"),
              ],
            ),
          ),
        );
      },
    )
    );
  }
}
