import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';

class ConsignmentProvider extends StatelessWidget {
  ConsignmentProvider({super.key, required this.child});
  final Widget child;

  final GetAllConsignment getAllConsignment = sl();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConsignmentCubit>(
      create: (context) =>
          ConsignmentCubit(getAllConsignment: getAllConsignment)
            ..getConsignments(),
      child: child,
    );
  }
}
