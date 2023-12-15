import 'package:auto_route/auto_route.dart';
import 'package:chaparapp/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return LoginProvider(
      child: Form(
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
              validator: (value) {
                if (value == null) {
                  return S.of(context).emptyEmail;
                } else {
                  if (!EmailValidation.isEmailValid(value)) {
                    return S.of(context).invalidEmail;
                  }
                  return null;
                }
              },
              onChanged: (String value) {
                email = value;
              },
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
                    validator: (value) {
                      if (value == null) {
                        return S.of(context).emptyPassword;
                      }
                      return null;
                    },
                    onChanged: (String value) {
                      password = value;
                    },
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
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) async {
                if (state is LoginLoaded) {
                  const storage = FlutterSecureStorage();
                  await storage.write(
                      key: AppConsts.accessTokenKey,
                      value: state.loginResponse!.accessToken);
                }
                if (state is LoginFailure) {
                  if (mounted) {
                    CustomSnackBar(
                            context: context,
                            text: state.errorMessage,
                            type: SnackBarType.error,
                            onPress: () {})
                        .prompt();
                  }
                }
              },
              builder: (context, state) {
                return AppMainButton(
                    text: S.of(context).loginButton,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: AppTheme.whiteColor),
                    onPress: () {
                      if (_key.currentState!.validate()) {
                        BlocProvider.of<LoginCubit>(context).loggingIn(
                            LoginRequestModel(
                                email: email, password: password));
                      }
                    },
                    loading: state is LoginLoading);
              },
            ),
          ],
        ),
      ),
    );
  }
}
