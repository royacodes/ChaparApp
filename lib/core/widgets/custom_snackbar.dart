import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../generated/l10n.dart';
import '../core.dart';

class CustomSnackBar {
  final BuildContext context;
  final String text;
  final SnackBarType type;
  final SnackBarActionType? action;
  final Function() onPress;
  final SnackBarBehavior behavior;

  CustomSnackBar(
      {required this.context,
        required this.text,
        required this.type,
        required this.onPress,
        this.action,
        this.behavior = SnackBarBehavior.fixed});

  void prompt() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        duration: const Duration(seconds: 5),
        behavior: behavior,
        backgroundColor: type == SnackBarType.success
            ? AppTheme.successColor
            : type == SnackBarType.info
            ? AppTheme.infoColor
            : AppTheme.errorColor,
        // action: SnackBarAction(
        //   textColor: Colors.white,
        //   label: action == SnackBarActionType.undo
        //       ? S.of(context).snackbarUndo
        //       : action == SnackBarActionType.retry
        //       ? S.of(context).snackbarRetry
        //       : '',
        //   onPressed: () {
        //     onPress();
        //   },
        // ),
      ),
    );
  }
}
