import 'dart:math';

import 'package:flutter/material.dart';

class ComplexButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundGradient(),
          SingleChildScrollView(
            child: Column(
              children: [
                _headerTitle(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _backgroundGradient() {
    final _linearGradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromRGBO(52, 54, 101, 1),
          Color.fromRGBO(35, 37, 57, 1),
        ],
        begin: FractionalOffset(0, 0.6),
        end: FractionalOffset(0, 1),
      )),
    );

    final _pinkBox = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360,
          width: 360,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(236, 98, 188, 1),
                  Color.fromRGBO(241, 142, 172, 1),
                ],
              ),
              color: Colors.pink,
              borderRadius: BorderRadius.circular(85)),
        ));

    return Stack(
      children: [
        _linearGradient,
        Positioned(
          child: _pinkBox,
          top: -100,
        ),
      ],
    );
  }

  Widget _headerTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 10,),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18),),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1)))
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today, size: 30,),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bubble_chart, size: 30,),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle, size: 30,),
                label: ''
            ),
          ],
        )
    );
  }

}
