import 'package:auto_route/auto_route.dart';
import 'package:chaparapp/features/consignment/consignment.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class ConsignmentListPage extends StatefulWidget {
  const ConsignmentListPage({super.key});

  @override
  State<ConsignmentListPage> createState() => _ConsignmentListPageState();
}

class _ConsignmentListPageState extends State<ConsignmentListPage> {
  @override
  void initState() {
    super.initState();
  }

  List<GetAllConsignmentData> consignments = const [
    GetAllConsignmentData(
        id: 1,
        status: "delivery",
        isCod: false,
        receiver: GetAllConsignmentReceiver(
            gender: "m", fullName: "علی محمدی", mobile: "09123456789"),
        receiverAddress: GetAllConsignmentReceiverAddress(
            city: "تهران",
            region: "ولیعصر",
            fullAddress: "خیابان رشت، پلاک 34"))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                S.of(context).consignments,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
              ),
            ),
            body: ListView.builder(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                ),
                itemCount: consignments.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container();
                })));
  }
}
