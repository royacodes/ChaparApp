import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnBackPress = Function();

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key, required this.onBackPress,});

  final OnBackPress onBackPress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        onBackPress();
      },
    );
  }
}