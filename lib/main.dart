import 'package:flutter/material.dart';
import './demo/draw_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Young'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => 'search button is pressed',
            )
          ],
          elevation: 10.0,
          centerTitle: true,
          //标题是否居中，默认为false
          bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_activity)),
                Tab(icon: Icon(Icons.verified_user)),
                Tab(icon: Icon(Icons.g_translate)),
              ]),
        ),
        body: TabBarView(children: <Widget>[
          ListViewDemo(),
          BasicDemo(),
          LayoutDemo(),
        ]),
        drawer: DrawDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
