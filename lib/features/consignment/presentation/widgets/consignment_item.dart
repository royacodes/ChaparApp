import 'package:chaparapp/core/core.dart';
import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

import '../../../../config/app_theme.dart';
import '../../../../generated/l10n.dart';

typedef OnDeliveredPress = Function();
typedef OnCallPressed = Function(String mobile);

class ConsignmentItem extends StatelessWidget {
  const ConsignmentItem({
    super.key,
    required this.consignmentItem,
    required this.onDeliveredPress,
    required this.onCallPressed,
  });

  final GetAllConsignmentData consignmentItem;
  final OnDeliveredPress onDeliveredPress;
  final OnCallPressed onCallPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 8),
          child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: AppInsets.smallPadding,
                  left: AppInsets.mediumPadding,
                  right: AppInsets.mediumPadding,
                  bottom: AppInsets.smallPadding),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: AppInsets.smallPadding),
                        title: Row(
                          children: [
                            UserImage(
                                imageUrl: consignmentItem.receiver.gender == "f"
                                    ? AssetPath.female
                                    : AssetPath.male),
                            const SizedBox(
                              width: AppInsets.smallPadding,
                            ),
                            Text(
                              consignmentItem.receiver.fullName,
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            const SizedBox(
                              width: AppInsets.smallPadding,
                            ),
                            Text(
                              consignmentItem.receiver.mobile,
                              textAlign: TextAlign.right,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                            ),
                            IconButton(
                                onPressed: () {
                                  onCallPressed(
                                      consignmentItem.receiver.mobile);
                                },
                                icon: const Icon(
                                  Icons.call,
                                  color: AppTheme.secondaryColor,
                                )),
                          ],
                        ),
                        trailing: ElevatedButton(
                          onPressed: onDeliveredPress,
                          child: SizedBox(
                            width: AppInsets.smallPadding * 7,
                            child: Center(
                              child: Text(
                                S.of(context).deliveryBtn,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: AppTheme.whiteColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppInsets.smallPadding,
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          child: const MySeparator(
                            color: AppTheme.primaryColor,
                          )),
                      const SizedBox(
                        height: AppInsets.smallPadding,
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: AppInsets.smallPadding),
                        title: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: AppTheme.secondaryColor,
                            ),
                            const SizedBox(
                              width: AppInsets.smallPadding,
                            ),
                            Text(
                              '${consignmentItem.receiverAddress.city} - ${consignmentItem.receiverAddress.region}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                            ),
                          ],
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(
                              right: AppInsets.extraPadding),
                          child: Text(
                            consignmentItem.receiverAddress.fullAddress,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppTheme.disabledColor),
                          ),
                        ),
                        trailing: consignmentItem.isCod
                            ? SvgPicture.asset(
                                AssetPath.codIcon,
                                width: 62,
                                height: 62,
                              )
                            : const Text(''),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
