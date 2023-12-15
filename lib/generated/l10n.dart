// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `چاپار`
  String get appName {
    return Intl.message(
      'چاپار',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `ورود به `
  String get loginTo {
    return Intl.message(
      'ورود به ',
      name: 'loginTo',
      desc: '',
      args: [],
    );
  }

  /// `ورود`
  String get loginButton {
    return Intl.message(
      'ورود',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `کلمه عبور`
  String get passwordLabel {
    return Intl.message(
      'کلمه عبور',
      name: 'passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `ایمیل`
  String get emailLabel {
    return Intl.message(
      'ایمیل',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `ایمیل خود را وارد کنید`
  String get emptyEmail {
    return Intl.message(
      'ایمیل خود را وارد کنید',
      name: 'emptyEmail',
      desc: '',
      args: [],
    );
  }

  /// `ایمیل وارد شده نامعتبر است`
  String get invalidEmail {
    return Intl.message(
      'ایمیل وارد شده نامعتبر است',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `کلمه عبور خود را وارد کنید`
  String get emptyPassword {
    return Intl.message(
      'کلمه عبور خود را وارد کنید',
      name: 'emptyPassword',
      desc: '',
      args: [],
    );
  }

  /// `ایمیل یا کلمه عبور وارد شده اشتباه است`
  String get invalidLoginRequestException {
    return Intl.message(
      'ایمیل یا کلمه عبور وارد شده اشتباه است',
      name: 'invalidLoginRequestException',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'fa'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
