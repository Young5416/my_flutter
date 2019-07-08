import 'package:flutter/material.dart';
import './demo/draw_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/sliver_demo.dart';
import './demo/view_demo.dart';
import './demo/navigator_demo.dart';
import './demo/fron_demo.dart';
import './demo/material_components.dart';
import 'demo/animation/animation_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
//      home: NavigatorDemo(),
        initialRoute: '/animation',
        routes: {
          '/': (context) => Home(),
          '/navigator': (context) => NavigatorDemo(),
          '/about': (context) => Page(
                title: '/about',
              ),
          '/from': (context) => FromDemo(),
          '/mdc': (context) => MaterialComponents(),
          '/animation': (context) => AnimationDemo(),
        },
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70,
            accentColor: Color.fromRGBO(3, 54, 255, 1.0)));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                Tab(icon: Icon(Icons.view_quilt)),
              ]),
        ),
        body: TabBarView(children: <Widget>[
          ListViewDemo(),
          BasicDemo(),
          LayoutDemo(),
          SliverDemo(),
        ]),
        drawer: DrawDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
