import 'package:flutter/material.dart';
import 'package:minecenter/home_page/home.dart';
import 'package:minecenter/mine_page/mine.dart';

import 'learn_eg/eghome.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  List<Widget> pages = <Widget>[
    EgHomePage(),
    HomePage(),
    Container(),
    HomePage(),
    MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('主页面'),
      // ),
      drawer: mydrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              title: Text(
                '主页',
                style: TextStyle(fontSize: 14),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 20,
              ),
              title: Text('喜欢')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.music_video,
                size: 20,
              ),
              title: Text('我的')),
        ],
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
          return Text(_pageIndex.toString());
        },
        currentIndex: _pageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
      body: Center(
        child: pages[_pageIndex],
      ),
    );
  }
}

class mydrawer extends StatefulWidget {
  const mydrawer({Key key, ScaffoldState state}) : super(key: key);

  @override
  _mydrawerState createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldKey,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
