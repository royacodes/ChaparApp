import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../auth.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(flex: 1, child: Container()),
            const Flexible(flex: 2, child: LoginPageHeader()),
            Flexible(
              flex: 4,
              child: Container(
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 16, vertical: 8),
                  child: const LoginPageForm()),
            ),
          ],
        ),
      ),
    );
  }
}
