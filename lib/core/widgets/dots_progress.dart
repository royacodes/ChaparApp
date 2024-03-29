import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../config/config.dart';

class DotsProgress extends StatelessWidget {
  const DotsProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFadingFour(
        color: Theme.of(context).colorScheme.primary,
        size: 24.0,
      ),
    );
  }
}
