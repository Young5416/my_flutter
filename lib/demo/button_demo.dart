import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //平滑按钮
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    //圆角按钮
    final Widget RaisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5.0),
//                      ),
                shape: StadiumBorder(),
              )),
          child: RaisedButton(
            child: Text('button'),
            onPressed: () {},
            elevation: 0.0,
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
//                textTheme: ButtonTextTheme.primary,
//                color: Theme.of(context).accentColor
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          elevation: 16.0,
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    //描边按钮
    final Widget OutLineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5.0),
//                      ),
                shape: StadiumBorder(),
              )),
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            //溅墨效果
            splashColor: Colors.grey[100],
            //设置边框颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
//                textTheme: ButtonTextTheme.primary,
//                color: Theme.of(context).accentColor
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget FixedWidthDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 160.0,
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            //溅墨效果
            splashColor: Colors.grey[100],
            //设置边框颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
//                textTheme: ButtonTextTheme.primary,
//                color: Theme.of(context).accentColor
          ),
        ),
      ],
    );

    final Widget ExpandedButtom = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            //溅墨效果
            splashColor: Colors.grey[100],
            //设置边框颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
//                textTheme: ButtonTextTheme.primary,
//                color: Theme.of(context).accentColor
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          flex: 1,
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            //溅墨效果
            splashColor: Colors.grey[100],
            //设置边框颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
//                textTheme: ButtonTextTheme.primary,
//                color: Theme.of(context).accentColor
          ),
        ),
      ],
    );

    final Widget ButtonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
              )),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('button'),
                onPressed: () {},
                //溅墨效果
                splashColor: Colors.grey[100],
                //设置边框颜色
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
//                textTheme: ButtonTextTheme.primary,
//                color: Theme.of(context).accentColor
              ),
              OutlineButton(
                child: Text('button'),
                onPressed: () {},
                //溅墨效果
                splashColor: Colors.grey[100],
                //设置边框颜色
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
//                textTheme: ButtonTextTheme.primary,
//                color: Theme.of(context).accentColor
              ),
            ],
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButtonDemo,
          RaisedButtonDemo,
          OutLineButtonDemo,
          FixedWidthDemo,
          ExpandedButtom,
          ButtonBarDemo,
        ],
      ),
    );
  }
}
