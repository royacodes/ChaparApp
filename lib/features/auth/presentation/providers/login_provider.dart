import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../auth.dart';

class LoginProvider extends StatelessWidget {
  LoginProvider({super.key, required this.child});
  final Widget child;

  final Login login = sl();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
        create: (context) => LoginCubit(login: login), child: child,);
  }
}