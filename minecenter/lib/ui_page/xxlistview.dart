import 'package:flutter/material.dart';
import 'package:minecenter/ui_page/datalist.dart';

class XXListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViewPage'),
        ),
        body: XXListViewPage2Contet(),
      ),
    );
  }
}

//builder 方式
class XXListViewPage2Contet extends StatelessWidget {
  //自定义方法
  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listData[index]["title"]),
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}

//for循环 方式
class XXListViewPageContet extends StatelessWidget {
  //自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((e) => ListTile(
          leading: Image.network(e["imageUrl"]),
          title: Text(e["title"]),
          subtitle: Text("author"),
        ));
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
