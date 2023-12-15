import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../config/config.dart';


class ButtonProgress extends StatelessWidget {
  const ButtonProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child:  SpinKitThreeBounce(
      color: AppTheme.txtDeactivateColor,
      size: 24.0,
    ),);
  }

}