import 'package:auto_route/auto_route.dart';
import 'package:chaparapp/config/config.dart';
import 'package:chaparapp/features/consignment/consignment.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

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

  List<GetAllConsignmentData> consignments = [];

  @override
  Widget build(BuildContext context) {
    return ConsignmentProvider(
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: AppTheme.surfaceColor,
                title: Padding(
                  padding: const EdgeInsets.only(right: AppInsets.largePadding),
                  child: Text(
                    S.of(context).consignments,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
              body: BlocConsumer<ConsignmentCubit, ConsignmentState>(
                listener: (context, state) {
                  if (state is ConsignmentLoaded) {
                    setState(() {
                      consignments = state.getAllConsignmentResponse!.data;
                    });
                  }
                  if (state is ConsignmentFailure) {
                    if (mounted) {
                      CustomSnackBar(
                          context: context,
                          text: state.errorMessage,
                          type: SnackBarType.error,
                          onPress: () {});
                    }
                  }
                },
                builder: (context, state) {
                  return state is ConsignmentLoading
                      ? const DotsProgress()
                      : state is ConsignmentLoaded
                          ? ListView.builder(
                              padding: const EdgeInsets.only(
                                top: 16,
                                bottom: 16,
                              ),
                              itemCount: consignments.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ConsignmentItem(
                                    consignmentItem: consignments[index],
                                    onDeliveredPress: () {
                                      AutoRouter.of(context)
                                          .push(DeliveryRoute());
                                    },
                                    onCallPressed: (String mobile) async {
                                      if (await canLaunchUrl(
                                          Uri(scheme: 'tel', path: mobile))) {
                                        await launchUrl(Uri(
                                          scheme: 'tel',
                                          path: mobile,
                                        ));
                                      } else {
                                        throw 'Could not launch $mobile';
                                      }
                                    });
                              })
                          : Container();
                },
              ))),
    );
  }
}
