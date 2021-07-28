import 'package:flutter/material.dart';
import 'package:minecenter/transit_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TransitPage(),
    );
  }
}
