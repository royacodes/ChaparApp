import 'package:chaparapp/core/widgets/button_progress.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';

class AppMainButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final VoidCallback? onPress;
  final bool loading;
  const AppMainButton(
      {super.key,
      required this.text,
      required this.style,
      required this.onPress,
      required this.loading});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        gradient: onPress == null ? null : AppTheme.buttonLinearGradient,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: ButtonTheme(
        minWidth: double.infinity,
        child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            disabledBackgroundColor: AppTheme.txtCaptionColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 16.0),
            child: loading
                ? const ButtonProgress()
                : Text(
                    text,
                    style: style,
                  ),
          ),
        ),
      ),
    );
  }
}
