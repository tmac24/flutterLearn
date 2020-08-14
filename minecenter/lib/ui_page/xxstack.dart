import 'package:flutter/material.dart';

class XXStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page'),
        ),
        body: StackPageContent(),
      ),
    );
  }
}

class StackPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
              left: 10,
            ),
            Positioned(
              child: Icon(
                Icons.search,
                size: 60,
                color: Colors.orange,
              ),
              bottom: 0,
              left: 100,
            ),
            Positioned(
              child: Icon(
                Icons.settings_applications,
                size: 50,
                color: Colors.green,
              ),
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
