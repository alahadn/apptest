// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listviewbuilderwithsearch extends StatefulWidget {
  const listviewbuilderwithsearch({super.key});

  @override
  State<listviewbuilderwithsearch> createState() =>
      _listviewbuilderwithsearchState();
} 

class _listviewbuilderwithsearchState extends State<listviewbuilderwithsearch> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Jinto", "department": "   sss   ", "age": 21},
    {"id": 2, "name": "ansiba", "department": " aa    ", "age": 22},
    {"id": 3, "name": "secret", "department": " xxx ", "age": 23},
    {"id": 4, "name": "sijo", "department": " ccc  ", "age": 24},
    {"id": 5, "name": "abhishek", "department": " fff ", "age": 25},
    
    {
      "id": 6,
      "name": "arjun",
      "department": " ddd                       ",
      "age": 26
    },
    {"id": 7, "name": "jasmin", "department": "    eee  ", "age": 27},
  ];

  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    // TODO: implement initState
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runfilter(String enteredkeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredkeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"]
                  .toLowerCase()
                  .contains(enteredkeyword.toLowerCase()) ||
              user["department"]
                  .toLowerCase()
                  .contains(enteredkeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundUsers = results;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Listbuilder with Dearch List",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runfilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) => Card(
                              key: ValueKey(_foundUsers[index]["id"]),
                              color: Colors.indigo.shade100,
                              elevation: 4,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                leading: Text(
                                  _foundUsers[index]["id"].toString(),
                                  style: const TextStyle(fontSize: 20),
                                ),
                                title: Text(_foundUsers[index]["name"]),
                                subtitle: Text(
                                    '${_foundUsers[index]["age"].toString()}years old'),
                              ),
                            ))
                    : const Text(
                        " not found",
                      ))
          ],
        ),
      ),
    );
  }
}
