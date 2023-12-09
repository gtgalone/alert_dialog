import 'package:flutter/material.dart';

/// The `title` argument is used to title of alert dialog.
/// The `content` argument is used to content of alert dialog.
/// The `textOK` argument is used to text for 'OK' Button of alert dialog.
/// The `canPop` argument is `canPop` of PopScope.
/// The `onPopInvoked` argument is `onPopInvoked` of PopScope.
Future<void> alert(
  BuildContext context, {
  Widget? title,
  Widget? content,
  Widget? textOK,
  bool canPop = false,
  void Function(bool)? onPopInvoked,
}) =>
    showDialog(
      context: context,
      builder: (BuildContext context) => PopScope(
        child: AlertDialog(
          title: title,
          content: SingleChildScrollView(child: content),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: textOK ??
                  Text(MaterialLocalizations.of(context).okButtonLabel),
            ),
          ],
        ),
        canPop: canPop,
        onPopInvoked: onPopInvoked,
      ),
    );
