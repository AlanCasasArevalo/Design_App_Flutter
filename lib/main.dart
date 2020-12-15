import 'package:design_app/src/pages/basic_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design App',
      initialRoute: 'basic_page',
      routes: {
        'basic_page': (BuildContext context) => BasicPage()
      },
    );
  }
}