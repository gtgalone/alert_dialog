# Alert Dialog

[![pub package](https://img.shields.io/pub/v/alert_dialog.svg)](https://pub.dartlang.org/packages/alert_dialog)

Alert Dialog Widget for Flutter(JS-LIKE).
https://pub.dev/packages/alert_dialog

## Installation

### Add pubspec.yaml
``` yaml
dependencies:
  alert_dialog: lastest_version
```
---
## Usage

### Basic
``` dart
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
              alert(context);
            },
          ),
        ),
      ),
    );
  }
}
```

### Custom Message
``` dart
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
            onPressed: () async {
              if (await alert(
                context,
                title: Text('Alert'),
                content: Text('Would you like to remove?'),
                textOK: Text('Yes'),
                textCancel: Text('No'),
              )) {
                return print('pressedOK');
              }
              return print('pressedCancel');
            },
          ),
        ),
      ),
    );
  }
}
```
---
## Recommend Libraries

- [Confirm Dialog](https://github.com/gtgalone/confirm_dialog) - Confirm Dialog Widget for Flutter(JS-LIKE).
- [Prompt Dialog](https://github.com/gtgalone/prompt_dialog) - Prompt Dialog Widget for Flutter(JS-LIKE).

## Maintainer

- [Jehun Seem](https://github.com/gtgalone)

## License

MIT