import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:minecenter/home_page/home.dart';
import 'package:minecenter/ishop_page/ishome_page.dart';
import 'package:minecenter/mine_page/layout/layout_cake.dart';
import 'package:minecenter/mine_page/layout/layout_expand.dart';
import 'package:minecenter/mine_page/layout/layoutbuild_demo.dart';
import 'package:minecenter/mine_page/mine_page.dart';
import 'package:minecenter/mine_page/minemodel.dart';
import 'dart:math';

import 'package:minecenter/mine_page/layout/layout_row.dart';
import 'package:minecenter/mine_page/universal/card_page.dart';
import 'package:minecenter/mine_page/universal/gride_page.dart';
import 'package:minecenter/mine_page/universal/list_page.dart';
import 'package:minecenter/mine_page/universal/stack_page.dart';
import 'package:minecenter/ui_page/xxgrideview.dart';
import 'package:minecenter/ui_page/xxlayout.dart';
import 'package:minecenter/ui_page/xxlistview.dart';
import 'package:minecenter/ui_page/xxstack.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  List<MineDateModel> _datas = [
    MineDateModel('assets/tom@2x.png', '神奈川丶解夏', ''),
    MineDateModel('assets/其他问题@3x.png', 'layout（Row、Column）', '回到旧版'),
    MineDateModel('assets/账户问题@2x.png', 'layout（Expanded）', '切换豪华版、经典版'),
    MineDateModel('assets/商品选中@3x.png', 'CakeDemo', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'GridView', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'ListView', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'Stack', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'Material_Card', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'layoutBuildDemo', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'Material_Card', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'Mycenter', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', '经营情况', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'XXListViewPage', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'XXGrideViewPage', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'XXLayoutPage', '员工、业务员、账号、1'),
    MineDateModel('assets/商品选中@3x.png', 'StackPage', '员工、业务员、账号、1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '个人中心',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _datas.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return new MyHeadAndName();
            } else {
              return new MineItem(date: _datas.elementAt(index));
            }
          },
        ),
      ),
      backgroundColor: Color(0xFFF8f8f8),
    );
  }
}

class MineItem extends StatelessWidget {
  final MineDateModel date;
  const MineItem({
    Key key,
    this.date,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: new BoxConstraints.expand(
        height: 50.0,
      ),
      decoration: new BoxDecoration(
        //圆角 边框等
        color: Colors.white, //getRandomColor(),
        border: new Border.all(
          color: Colors.blue[200],
          width: 3.0,
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
      ),
      margin: EdgeInsets.fromLTRB(7, 3, 7, 3),
      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
      child: Row(
        children: <Widget>[
          // FlatButton(
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: FloatingActionButton(
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              onPressed: () => listItemchilck(context, date.name),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    date.icon,
                    width: 27,
                    height: 27,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  Text(
                    date.name,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  Text(
                    date.subTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void listItemchilck(context, String name) {
  print('点击了$name');
  if (name == 'layout（Row、Column）') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MylayouRowAndColum()),
    );
  } else if (name == 'layout（Expanded）') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyLayoutExpand()),
    );
  } else if (name == 'CakeDemo') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyLayoutCakeDemo()),
    );
  } else if (name == 'GridView') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyGrideDemo()),
    );
  } else if (name == 'ListView') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyListView()),
    );
  } else if (name == 'Stack') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyStack()),
    );
  } else if (name == 'Material_Card') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyCard()),
    );
  } else if (name == 'layoutBuildDemo') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MylayoutBuild()),
    );
  } else if (name == 'Mycenter') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Mycenter()),
    );
  } else if (name == '经营情况') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IsHomePage()),
    );
  } else if (name == 'XXListViewPage') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => XXListViewPage()),
    );
  } else if (name == 'XXGrideViewPage') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => XXGrideViewPage()),
    );
  } else if (name == 'XXLayoutPage') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => XXLayoutPage()),
    );
  } else if (name == 'StackPage') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => XXStackPage()),
    );
  } else {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}

class MyHeadAndName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/tom@2x.png',
                  width: 80,
                  height: 80,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(3, 7, 3, 13)),
                      Text(
                        '神奈川丶解夏',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '18181106812',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/yjt@2x.png',
            width: 24,
            height: 24,
          )
        ],
      ),
    );
  }
}

getRandomColor() {
  return Color.fromARGB(255, Random.secure().nextInt(255),
      Random.secure().nextInt(255), Random.secure().nextInt(255));
}
