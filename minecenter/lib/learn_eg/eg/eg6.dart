import 'package:flutter/material.dart';
import 'package:minecenter/learn_eg/eg/user.dart';
import 'dart:convert';

class JsonDemo extends StatelessWidget {
  const JsonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var json = {"name": "John Smith", "email": "john@example.com"};

    // Map userMap = jsonDecode(json);
    // var user = new User.fromJson(userMap);

    var user = new User('the帅', "7279234829@qq.com");
    final json = jsonEncode(user); //序列化
    Map userMap = jsonDecode(json); //反序列化
    var user2 = new User.fromJson(userMap);

    const textStye = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 19,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('序列化与反序列化'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              user.name,
              style: textStye,
            ),
            Text(
              user.email,
              style: textStye,
            ),
            Text(json),
            Text(user2.name),
            Text(user2.email),
          ],
        ),
      ),
    );
  }
}

class JSON {}
