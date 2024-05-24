// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';

class alertbox extends StatefulWidget {
  const alertbox({super.key});

  @override
  State<alertbox> createState() => alertboxState();
}

class alertboxState extends State<alertbox> {
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

  String? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertBox"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showDialog(context);
              },
              child: Text("Alert Dialog"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _alertTextfield(context);
              },
              child: Text("Alert TextField"),
            ),
            data == null ? SizedBox() : Text("data is = " + data.toString()),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _checkbox(context);
              },
              child: Text("Alert checkbox"),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("alert"),
            content: const Text("flutter alert !"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("OK")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
            ],
          );
        });
  }

  void _alertTextfield(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _TextEditingController =
        TextEditingController();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 10,
            title: const Text("alert"),
            content: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _TextEditingController,
                  validator: (value) {
                    return value!.isNotEmpty ? null : "Enter any text";
                  },
                  decoration: InputDecoration(hintText: "please enter text"),
                )),
            actions: <Widget>[
              TextButton(
                child: const Text("OKk"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      data = _TextEditingController.text;
                    });

                    Navigator.of(context).pop();
                  }
                },
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
            ],
          );
        });
  }

  void _checkbox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return  StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Text("Alert"),
              content: Container(
                height: 250,
                child: SingleChildScrollView(
                  child: Column(
                    children: values.keys.map((String key) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Checkbox(
                              value: values[key],
                              onChanged: (bool? value) {
                                setState(() {
                                  values[key] = value!;
                                });
                              },
                            ),
                            Text(
                              key,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    getCheckboxItems();
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Get",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel"),
                ),
              ],
            );
          },
        );
      },
    );
  }
}