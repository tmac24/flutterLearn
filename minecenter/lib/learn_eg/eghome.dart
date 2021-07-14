import 'package:flutter/material.dart';
import 'package:minecenter/ui_page/datalist.dart';

class EgHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('示例demo'),
        ),
        body: XXGrideViewPage2Content(),
      ),
    );
  }
}

// .builder 方式
class XXGrideViewPage2Content extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
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
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}

// .count 方式
class XXGrideViewPageContent extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map(
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
