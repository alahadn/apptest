import 'package:flutter/material.dart';

class DropDrown extends StatefulWidget {
  const DropDrown({super.key});

  @override
  State<DropDrown> createState() => _DropDrownState();
}

class _DropDrownState extends State<DropDrown> {
  String DropDrownValue = 'India';
  List<String> spinneritems = ['India', 'China', 'Russia', 'Sri Lanka'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              value: DropDrownValue,
              elevation: 16,
                onChanged: (String? data) {
                  setState(() {
                    DropDrownValue = data!;
                  });
                },
                items:
                spinneritems.map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                    
                    


                  );
                }).toList(),
                ),
                Text("Selected country = "+ '$DropDrownValue',style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
