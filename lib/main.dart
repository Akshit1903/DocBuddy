import 'package:doc_buddy/screens/grid_screen.dart';
import 'package:flutter/material.dart';
import 'screens/form_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'TVS DocBuddy',
      home: GridScreen(),
      routes: {
        FormScreen.routeName: (ctx) => FormScreen(""),
      },
    );
  }
}
