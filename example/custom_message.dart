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
          child: TextButton(
            child: Text('Alert Dialog'),
            onPressed: () async {
              return alert(
                context,
                title: Text('Alert'),
                content: Text('It is fun!'),
                textOK: Text('Yes'),
              );
            },
          ),
        ),
      ),
    );
  }
}
