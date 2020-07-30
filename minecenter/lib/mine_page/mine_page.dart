import 'package:flutter/material.dart';
import 'package:minecenter/mine_page/minemodel.dart';

class Mycenter extends StatefulWidget {
  @override
  _MycenterState createState() => _MycenterState();
}

class _MycenterState extends State<Mycenter> {
  List<MineDateModel> dataArray = [
    MineDateModel('assets/tom@2x.png', '神奈川丶解夏', ''),
    MineDateModel('assets/其他问题@3x.png', 'layout（Row、Column）', '回到旧版'),
    MineDateModel('assets/账户问题@2x.png', 'layout（Expanded）', '切换豪华版、经典版'),
    MineDateModel('assets/商品选中@3x.png', 'CakeDemo', '员工、业务员、账号、管理权限'),
    MineDateModel('assets/商品选中@3x.png', 'GridView', '员工、业务员、账号、管理权限'),
    MineDateModel('assets/商品选中@3x.png', 'ListView', '员工、业务员、账号、管理权限'),
    MineDateModel('assets/商品选中@3x.png', 'Stack', '员工、业务员、账号、管理权限'),
    MineDateModel('assets/商品选中@3x.png', 'Material_Card', '员工、业务员、账号、管理权限'),
    MineDateModel('assets/商品选中@3x.png', 'layoutBuildDemo', '员工、业务员、账号、管理权限'),
    MineDateModel('assets/商品选中@3x.png', 'Material_Card', '员工、业务员、账号、管理权限'),
    MineDateModel('assets/商品选中@3x.png', 'Mycenter', '员工、业务员、账号、管理权限'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '我的',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: ListView.builder(
              itemCount: dataArray.length,
              itemBuilder: (context, index) {
                return new MyListItem(
                  model: dataArray[index],
                );
              })),
      backgroundColor: Color(0xFFF8f8f8),
    );
  }
}

class MyListItem extends StatelessWidget {
  final MineDateModel model;
  const MyListItem({
    Key key,
    this.model,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 11, 12, 0),
      child: InkWell(
        child: Container(
          constraints: new BoxConstraints.expand(
            height: 50.0,
          ),
          decoration: new BoxDecoration(
            //圆角 边框等
            color: Colors.white,
            border: new Border.all(
              color: Colors.yellow,
              width: 3.0,
            ),
            borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(7, 0, 13, 0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      model.icon,
                      width: 27,
                      height: 27,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            model.name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              model.subTitle,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/yjt@2x.png',
                width: 22,
                height: 22,
              ),
            ],
          ),
        ),
        onTap: () => mylistItemchilck(context, model.name),
      ),
    );
  }
}

ListTile ListItem = ListTile();

void mylistItemchilck(context, String name) {
  print('点击了$name');
}
