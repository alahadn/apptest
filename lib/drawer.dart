import 'package:flutter/material.dart';

/// Flutter code sample for [Drawer].


class DrawerExample extends StatefulWidget {

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
    GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: const Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              
              decoration: BoxDecoration(
            
                
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {
                setState(() {
                  selectedPage = 'Messages';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  selectedPage = 'Profile';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  
                  selectedPage = 'Settings';
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Page: $selectedPage'),
            IconButton(onPressed: (){
              _scaffoldkey.currentState!.openDrawer();
            }, icon: Icon(Icons.menu,color: Colors.red,))
          ],
        ),
      ),
    );
  }
}
