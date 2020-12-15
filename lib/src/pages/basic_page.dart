import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            _imageBuilder(),
            _titleBuilder(),
            _actionsBuilder(),
            _textBuilder(),
            _textBuilder(),
            _textBuilder(),
            _textBuilder(),
            _textBuilder(),
            _textBuilder(),
          ],
        )
      ),
    );
  }

  Widget _imageBuilder() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://ipt.imgix.net/205939/x/0/the-best-landscape-photographers-you-need-to-follow-in-2020-1.jpg?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-3.3.0&w=883',),
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _titleBuilder() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Atardecer',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    '5 Reasons Why Iceland is the Best',
                    style: subTitleStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Text('41')
          ],
        ),
      ),
    );
  }

  Widget _actionsBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _actionBuilder(Icons.call, 'CALL'),
        _actionBuilder(Icons.near_me, 'ROUTE'),
        _actionBuilder(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _actionBuilder(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.blue),
        )
      ],
    );
  }

  Widget _textBuilder() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text(
            'Praesentium aspernatur numquam neque. Qui quo non consequatur. Pariatur eum a sed ut fugit sapiente. Praesentium aspernatur numquam neque. Qui quo non consequatur. Pariatur eum a sed ut fugit sapiente. Praesentium aspernatur numquam neque.',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
