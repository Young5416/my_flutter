import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyContainerDemo();
  }
}

class MyContainerDemo extends StatelessWidget {
  final String _pic =
      'https://images.unsplash.com/flagged/photo-1554443883-83db889b4007?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(_pic),
              alignment: Alignment.center,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.grey[100].withOpacity(0.3), BlendMode.hardLight))),
//      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.refresh,
              size: 32.0,
              color: Colors.white,
            ),
//            color: Color.fromRGBO(66, 108, 115, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(66, 108, 115, 1.0),
                border: Border.all(
                  color: Colors.blueGrey[100],
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                //边框c\qDDS
//                borderRadius: BorderRadius.circular(16.0), //box圆角
                boxShadow: [
                  //阴影
                  BoxShadow(
                      offset: Offset(6.0, 7.0), //相对其实位置
                      color: Color.fromRGBO(86, 108, 115, 1.0),
                      blurRadius: 10.0, //模糊效果
                      spreadRadius: 0.0 //偏移效果
                      )
                ],
                shape: BoxShape.circle,
                //形状
//                gradient: RadialGradient(colors: [
//                  Color.fromRGBO(46, 92, 110, 1.0),
//                  Color.fromRGBO(87, 124, 138, 1.0)
//                ]),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(120, 125, 123, 1.0),
                  Color.fromRGBO(33, 30, 85, 1.0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: ('Young'),
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: ('hha'),
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                ))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _TextStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = 'Young';
  final String _test = 'haha';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '$_author---$_test对于这些在过渡中切换的类名来说，如果你使用一个没有名字的 <transition>，则 v- 是这些类名的默认前缀。如果你使用了 <transition name="my-transition">，那么 v-enter 会替换为 my-transition-enter。',
      textAlign: TextAlign.left,
      style: _TextStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
