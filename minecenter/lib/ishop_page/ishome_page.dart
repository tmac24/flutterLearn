import 'package:flutter/material.dart';
import 'package:minecenter/mine_page/minemodel.dart';

class IsHomePage extends StatefulWidget {
  @override
  _IsHomePageState createState() => _IsHomePageState();
}

class _IsHomePageState extends State<IsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '经营情况',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: firstSection,
    );
  }

  Widget firstSection = SizedBox(
    height: 170,
    child: Card(
      child: Column(
        children: <Widget>[
          firstSectionTitle,
          secondSection,
        ],
      ),
    ),
  );
}

Widget secondSection = Row(
  children: <Widget>[
    secondItem(
      model: null,
    )
  ],
);

class secondItem extends StatelessWidget {
  final MineDateModel model;
  const secondItem({
    Key key,
    this.model,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/商品选中@3x.png',
                  width: 22,
                  height: 22,
                ),
                Text('收入（元）'),
                Image.asset(
                  'assets/yjt@2x.png',
                  width: 22,
                  height: 22,
                ),
              ],
            ),
          ),
          Text('5,600'),
          Container(
            child: Row(
              children: <Widget>[
                Text('日环比  --'),
                Text('年同比 下降12%'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget firstSectionTitle = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Text(
              '实时概况',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
            ),
            MaterialButton(
              onPressed: () => nameclick('隐藏数据'),
              child: Text(
                '隐藏数据',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
      MaterialButton(
        onPressed: () => nameclick('今日'),
        child: Text(
          '今日',
          style: TextStyle(color: Colors.blue),
        ),
      )
    ],
  ),
);

void nameclick(String name) {
  print('点击了$name');
}
