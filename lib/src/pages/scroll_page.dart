import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _firstPageBuilder(),
          _secondPageBuilder(),
        ],
      ),
    );
  }

  Widget _firstPageBuilder() {
    return Stack(
      children: [
        _backgroundColor(),
        _backgroundImage(),
        _widget()
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _backgroundImage() {
    return Container(
      child: Image(
        image: AssetImage('assets/taj_mahal.png'),
        fit: BoxFit.cover,
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _widget() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 60);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text('11º', style: textStyle,),
          Text('Miércoles', style: textStyle,),
          Expanded(
              child: Container()
          ),
          Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white,)
        ],
      ),
    );
  }

  Widget _secondPageBuilder() {
    return Stack(
      children: [
        _backgroundColor(),
        _welcomeButton()
      ],
    );
  }

  Widget _welcomeButton() {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: RaisedButton(
          color: Colors.blue,
          elevation: 5,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text('Bienvenido', style: TextStyle(fontSize: 20),)
          ),
          onPressed: () {
            print('saliendo del tutorial');
          },
        ),
      ),
    );
  }

}
