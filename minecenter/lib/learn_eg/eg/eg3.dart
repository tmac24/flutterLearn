import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class ElevatedBtn extends StatefulWidget {
  const ElevatedBtn({Key key}) : super(key: key);

  @override
  State<ElevatedBtn> createState() => _ElevatedBtnState();
}

/// This is the private State class that goes with ElevatedBtn.
class _ElevatedBtnState extends State<ElevatedBtn> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Text('ElevatedButton'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: style,
              onPressed: null,
              child: const Text('Disabled'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}
