import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text('Young'),
//            floating: true,
//            centerTitle: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Hello Young'.toUpperCase(),
                style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.w400),
              ),
              centerTitle: true,
              background: Image.network(
                  'https://images.unsplash.com/photo-1522392163236-9b4369cf54f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                  fit: BoxFit.cover),
            ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
                  padding: EdgeInsets.all(8.0), sliver: SliverListDemo()))
        ],
      ),
    );
  }
}

//Sliver 列表视图
class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.only(bottom: 28.0),
            child: Material(
                elevation: 14.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12.0),
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      //比例
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        posts[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 32.0,
                      left: 24.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            posts[index].title,
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          Text(
                            posts[index].author,
                            style:
                                TextStyle(fontSize: 13.0, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                )));
      }, childCount: posts.length),
    );
  }
}

//Sliver 网格视图
class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          // 显示比例
          childAspectRatio: 1.0),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
