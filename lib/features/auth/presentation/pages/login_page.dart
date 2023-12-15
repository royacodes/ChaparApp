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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginPageHeader(),
              Container(
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 16, vertical: 8),
                  child: const LoginPageForm()),
            ],
          ),
        ),
      ),
    );
  }
}
