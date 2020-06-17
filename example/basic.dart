import 'package:flutter/material.dart';

import 'package:alert_dialog/alert_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: FlatButton(
            child: Text('Alert Dialog'),
            onPressed: () {
              return alert(context);
            },
          ),
        ),
      ),
    );
  }
}
