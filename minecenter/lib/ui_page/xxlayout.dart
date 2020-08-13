import 'package:flutter/material.dart';

class XXLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout"),
        ),
        body: XXLayoutPageContent(),
      ),
    );
  }
}

class XXLayoutPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              height: 180,
              color: Colors.green,
              child: Text('你好啊 flutter'),
            ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network(
                          "https://www.itying.com/images/flutter/3.png",
                          fit: BoxFit.cover),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 85,
                      child: Image.network(
                          "https://www.itying.com/images/flutter/4.png",
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
