# Alert Dialog

[![pub package](https://img.shields.io/pub/v/alert_dialog.svg)](https://pub.dartlang.org/packages/alert_dialog)

Alert Dialog Widget for Flutter(JS-LIKE).
https://pub.dev/packages/alert_dialog

## Installation

### Add pubspec.yaml
``` yaml
dependencies:
  alert_dialog: ^1.0.2
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
            onPressed: () async {
              return alert(context, title: Text('Alert'));
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
```
---
## Recommend Libraries

- [Confirm Dialog](https://github.com/gtgalone/confirm_dialog) - Confirm Dialog Widget for Flutter(JS-LIKE).
- [Prompt Dialog](https://github.com/gtgalone/prompt_dialog) - Prompt Dialog Widget for Flutter(JS-LIKE).
- [Currency Text Input Formatter](https://github.com/gtgalone/currency_text_input_formatter) - Currency Text Input Formatter for Flutter.

## Maintainer

- [Jehun Seem](https://github.com/gtgalone)

## License

MIT
