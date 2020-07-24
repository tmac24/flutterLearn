import 'package:flutter/material.dart';

class MylayouRowAndColum extends StatefulWidget {
  @override
  _MylayouRowAndColumState createState() => _MylayouRowAndColumState();
}

class _MylayouRowAndColumState extends State<MylayouRowAndColum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RowAndColum'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Container(
          child: Row(
            children: <Widget>[
              MyLayout.column(),
              Padding(padding: EdgeInsets.fromLTRB(13, 0, 0, 0)),
              MyLayout.row(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLayout {
  static row() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _getImage('assets/pic1.jpg'),
          _getImage('assets/pic2.jpg'),
          _getImage('assets/pic3.jpg'),
        ],
      ),
    );
  }

  static column() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _getImage('assets/pic1.jpg'),
          _getImage('assets/pic2.jpg'),
          _getImage('assets/pic3.jpg'),
        ],
      ),
    );
  }

  static _getImage(imageStr) {
    return new Image.asset(
      imageStr,
      width: 100.0,
    );
  }
}
