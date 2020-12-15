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
    return Center(
      child: Text('Pagina numero 1'),
    );
  }

  Widget _secondPageBuilder() {
    return Center(
      child: Text('Pagina numero 2'),
    );
  }


}
