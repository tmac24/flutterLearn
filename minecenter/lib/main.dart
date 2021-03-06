import 'package:flutter/material.dart';
import 'package:minecenter/home_page/home.dart';
import 'package:minecenter/mine_page/mine.dart';

import 'learn_eg/eghome.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  List<Widget> pages = <Widget>[
    EgHomePage(),
    HomePage(),
    MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('主页面'),
      // ),
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
