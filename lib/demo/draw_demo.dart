import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName:
                  Text('Young', style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text('yl18755144431@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars2.githubusercontent.com/u/34014756?s=460&v=4'),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[400],
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1559530259-cd011f67f2c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1130&q=80'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.grey[400].withOpacity(0.5),
                          BlendMode.hardLight)))),
          ListTile(
            title: Text(
              'Message',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
