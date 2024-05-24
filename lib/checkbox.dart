import 'dart:developer';

import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _exampleState();
}

class _exampleState extends State<checkbox> {
  Map<String, bool> values = {
    'English': false,
    'Hindi': false,
    'Telungu': false,
    'Tamil': false,
    'Malayalam': false,
  };

  var tmpList = [];
   getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpList.add(key);
      }
    });
    log(tmpList.toString());
    tmpList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "checkbox",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 2),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                  child: Container(
                height: 200,
              
                child: ListView(
                  children: values.keys.map((String key) {
                    return Row(
                      children: [
                        Checkbox(
                            value: values[key],
                            onChanged: (bool? value) {
                              setState(() {
                                values[key] = value!;
                              });
                            }),
                        Text(
                          key,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: getCheckboxItems,
                child: Text(
                  "Get",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}

