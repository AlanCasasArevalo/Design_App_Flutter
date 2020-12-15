import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://ipt.imgix.net/205939/x/0/the-best-landscape-photographers-you-need-to-follow-in-2020-1.jpg?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-3.3.0&w=883'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Atardecer', style: titleStyle,),
                      SizedBox(height: 7,),
                      Text('5 Reasons Why Iceland is the Best', style: subTitleStyle,),
                    ],
                  ),
                ),
                Icon(Icons.star, color: Colors.red,size: 30,),
                Text('41')
              ],
            ),
          )
        ],
      ),
    );
  }
}
