import 'package:design_app/src/pages/basic_page.dart';
import 'package:design_app/src/pages/complex_buttons.dart';
import 'package:design_app/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design App',
      initialRoute: 'complex_buttons',
      routes: {
        'basic_page': (BuildContext context) => BasicPage(),
        'scroll_page': (BuildContext context) => ScrollPage(),
        'complex_buttons': (BuildContext context) => ComplexButtons(),
      },
    );
  }
}
