import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';

class LoginPageForm extends StatefulWidget {
  const LoginPageForm({
    super.key,
  });

  @override
  State<LoginPageForm> createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
  final _key = GlobalKey<FormState>();
  final ValueNotifier<bool> _obscured = ValueNotifier(true);

  bool isPasswordShown = false;

  onPassShowClicked() {
    isPasswordShown = !isPasswordShown;
    setState(() {});
  }

  onLogin() {
    final bool isFormOkay = _key.currentState?.validate() ?? false;
    if (isFormOkay) {
      // Navigator.pushNamed(context, AppRoutes.entryPoint);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: '',
            initValue: '',
            onChanged: (String value) {},
            textInputType: TextInputType.name,
            labelText: S.of(context).emailLabel,
            hasPrefixIcon: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SvgPicture.asset(
                AssetPath.email,
                height: 16,
                width: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ValueListenableBuilder<bool>(
              valueListenable: _obscured,
              builder: (context, obscured, child) {
                return CustomTextFormField(
                  hintText: '',
                  onChanged: (String value) {},
                  textInputType: TextInputType.name,
                  labelText: S.of(context).passwordLabel,
                  obscured: obscured,
                  hasPrefixIcon: true,
                  hasSuffixIcon: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AssetPath.lockPass,
                      height: 16,
                      width: 16,
                    ),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      _obscured.value = !_obscured.value;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SvgPicture.asset(
                        obscured ? AssetPath.hidePass : AssetPath.showPass,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ),
                );
              }),
          const SizedBox(
            height: 16,
          ),
          AppMainButton(
              text: S.of(context).loginButton,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: AppTheme.whiteColor),
              onPress: () {},
              loading: false),
        ],
      ),
    );
  }
}
