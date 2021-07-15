import 'package:flutter/material.dart';
import 'package:minecenter/learn_eg/eg/eg2.dart';
import 'package:minecenter/learn_eg/eg/eg1.dart';
import 'package:minecenter/macro/define.dart';
import 'package:minecenter/ui_page/datalist.dart';

import '../ui_page/datalist.dart';

class EgHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Eg2()),
            );
          },
        ),
        title: Text('示例demo'),
      ),
      body: XXGrideViewPage2Content(),
    );
  }
}

// .builder 方式
class XXGrideViewPage2Content extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      child: GestureDetector(
        child: Column(
          children: <Widget>[
            Image.network(demoData[index]['imageUrl']),
            SizedBox(height: 12),
            Container(
              width: width / 2 - 20,
              child: Text(
                demoData[index]['title'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            )
          ],
        ),
        onTap: () => _tapItem(demoData[index]['title'], context),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //注意
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0, //水平子 Widget 之间间距
        mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
        crossAxisCount: 2, //一行的 Widget 数量
      ),
      itemCount: demoData.length,
      itemBuilder: this._getListData,
    );
  }
}

_tapItem(name, context) {
  print('点击了eg:$name');
  if (name == '基础 Widget') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Eg1()),
    );
  } else if (name == '使用 Material 组件') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Eg2()),
    );
  }
}

// .count 方式
class XXGrideViewPageContent extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = demoData.map(
      (e) => Container(
        child: Column(
          children: <Widget>[
            Image.network(e["imageUrl"]),
            SizedBox(
              height: 12,
            ),
            Text(
              e["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
          color: Color.fromRGBO(233, 233, 233, 0.9),
          width: 1,
        )),
      ),
    );
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0, //水平子 Widget 之间间距
      mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
      crossAxisCount: 2, //一行的 Widget 数量
      // childAspectRatio:0.7,  //宽度和高度的比例
      children: this._getListData(),
    );
  }
}
