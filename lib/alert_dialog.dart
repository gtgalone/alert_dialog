import 'package:flutter/material.dart';

/// The `title` argument is used to title of alert dialog.
/// The `content` argument is used to content of alert dialog.
/// The `textOK` argument is used to text for 'OK' Button of alert dialog.
void alert(BuildContext context, { Widget title, Widget content, Widget textOK }) {
  showDialog(
    context: context,
    child: AlertDialog(
      title: title != null ? title : Text('Alert'),
      content: content,
      actions: [
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: textOK != null ? textOK : Text('OK'),
        ),
      ],
    ),
  );
}
