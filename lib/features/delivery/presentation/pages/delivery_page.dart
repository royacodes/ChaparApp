import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class DeliveryPage extends StatelessWidget {
  DeliveryPage({super.key});

  final _key = GlobalKey<FormState>();
  late String deliveryCode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.surfaceColor,
          title: Text(
            S.of(context).deliveryPageTitle,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          leading: AppBarBackButton(onBackPress: () {
            AutoRouter.of(context).pop();
          }),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppInsets.mediumPadding,
              vertical: AppInsets.extraPadding),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).enterDeliveryCode,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: AppInsets.smallPadding,
                    ),
                    CustomTextFormField(
                      hintText: '',
                      initValue: '',
                      validator: (value) {
                        if (value == null) {
                          return S.of(context).enterDeliveryCode;
                        } else {
                          if (value.length != 4) {
                            return S.of(context).deliveryCodeLengthInvalid;
                          }
                          return null;
                        }
                      },
                      onChanged: (String value) {
                        deliveryCode = value;
                      },
                      textInputType: TextInputType.name,
                      labelText: S.of(context).deliveryCodeLabel,
                      hasPrefixIcon: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                AppMainButton(
                    text: S.of(context).confirm,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: AppTheme.whiteColor),
                    onPress: () {
                      if (_key.currentState!.validate()) {}
                    },
                    loading: false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
