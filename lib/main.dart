import 'package:flutter/material.dart';
import 'package:login_page/Login.dart';
import 'package:login_page/alertbox.dart';
import 'package:login_page/bottomnavigationbar.dart';
import 'package:login_page/bottomsheet.dart';
import 'package:login_page/bottomsheettextfield.dart';
import 'package:login_page/checkbox.dart';
import 'package:login_page/Dropdown.dart';
import 'package:login_page/drawer.dart';
import 'package:login_page/example.dart';
import 'package:login_page/expanded.dart';
import 'package:login_page/expansionpanel.dart';
import 'package:login_page/gridview.dart';
import 'package:login_page/listview.dart';
import 'package:login_page/listviewbuilder.dart';
import 'package:login_page/listviewbuildersaperate.dart';
import 'package:login_page/listviewbuilderwithsearch.dart';
import 'package:login_page/phonenumber.dart';
import 'package:login_page/radiolisttile.dart';
import 'package:login_page/reorderablelist.dart';
import 'package:login_page/reponsiveintrensic.dart';
import 'package:login_page/responsivewidgettask.dart';
import 'package:login_page/resposivelayoutbuilder.dart';
import 'package:login_page/resposivewidgettask2.dart';
import 'package:login_page/signup.dart';
import 'package:login_page/snackbar.dart';
import 'package:login_page/staggeredgridview.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:login_page/tapbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:  loginpage(),
      initialRoute: '/',
      routes: {
        '/': (context) => loginpage(),
        '/signup': (context) => aaa(),
        '/checkbox': (context) => checkbox(),
        '/Bottomnavigation': (context) => BottomNavigationBarExample(),
        '/drawer': (context) => DrawerExample(),
        '/tapbar': (context) => TabBarExample(),
        '/RadioListTileExample': (context) => RadioListTileExample(),
        '/ListView': (context) => ListVieww(),
        '/listviewbuilder': (context) => listviewbuilder(),
        '/listviewbuildersaparate': (context) => listviewbuildersaparate(),
        '/ReorderableExample': (context) => ReorderableExample(),
        '/listviewbuilderwithsearch': (context) => listviewbuilderwithsearch(),
        '/GridViewExampleApp': (context) => GridViewExampleApp(),
        '/staggeredgrid': (context) => staggered(),
        '/alertbox': (context) => alertbox(),
        '/snackbar': (context) => snackbar(),
        '/bottomsheet': (context) => bottomsheet(),
        '/bottomsheettextfield': (context) => bottomsheettextfield(),
        '/TextFieldSheet': (context) => TextFieldSheet(),
        '/expansionpanel': (context) => expansionpanel(),
        '/intrensicresponsive': (context) => intrensicresponsive(),
        '/ExpandedApp': (context) => ExpandedApp(),
        '/layoutbuilder': (context) => layoutbuilder(),
        '/responsivetask': (context) => responsivetask(),
        '/task2': (context) => task2(),
      },
    );
  }
}
