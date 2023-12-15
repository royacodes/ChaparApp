import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Light Theme Colors
  static const Color primaryColor = Color(0xFF00519E);
  static const Color primaryLightColor = Color(0xFF0073BE);
  static const Color primaryDarkColor = Color(0xFF003874);
  static const Color secondaryColor = Color(0xFF77BCF8);
  static const Color secondaryLightColor = Color(0xFF77BCF8);
  static const Color secondaryDarkColor = Color(0xFF0077B5);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color onSurfaceColor = Color(0xFF212121);
  static const Color backgroundColor = Color(0xFFFAFAFA);
  static const Color dividerColor = Color(0xFFEEEEEE);
  static const Color errorColor = Color(0xFFF44336);
  static const Color disabledColor = Color(0xFF9E9E9E);
  static const Color onPrimaryColor = Color(0xFF212121);
  static const Color onSecondaryColor = Color(0xFF212121);
  static const Color successColor = Color(0xFF1E8341);
  static const Color infoColor = Color(0xFFFFFB63);

  static const Color blackColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);

  ///Text Color

  static const Color txtheadlineColor = Color(0xFF212121);
  static const Color txtHeaderColor = Color(0xFF383838);
  static const Color txtBodyColor = Color(0xFF474747);
  static const Color txtSubTitleColor = Color(0xFF58595B);
  static const Color txtCaptionColor = Color(0xFFC7C7C7);
  static const Color txtDeactivateColor = Color(0xFFE6E6E6);
  static const Color txtBackgroundColor = Color(0xFFF3F3F3);

  //gradient

  static const buttonLinearGradient = LinearGradient(
    begin: Alignment(1.7, -0.02),
    end: Alignment(-1, 0.02),
    colors: [primaryColor, primaryDarkColor],
  );

  //Light Theme

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Yekan',
    canvasColor: surfaceColor,
    disabledColor: disabledColor,
    scaffoldBackgroundColor: surfaceColor,
    useMaterial3: false,
    textTheme: const TextTheme(
        headlineMedium: h3Medium18,
        headlineLarge: h3Bold18,
        headlineSmall: h3Regular18,
        titleSmall: headerRegular16,
        titleMedium: headerMedium16,
        titleLarge: headerBold16,
        bodySmall: bodyRegular14,
        bodyMedium: bodyMedium14,
        bodyLarge: bodyBold14,
        displaySmall: captionRgular12,
        displayMedium: captionMedium12,
        displayLarge: captionBold12,
        labelSmall: buttonMediumMedium14,
        labelMedium: buttonBigRegular16,
        labelLarge: buttonBigMedium16),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      toolbarTextStyle: TextStyle(
          color: whiteColor, fontSize: 18, fontWeight: FontWeight.w600),
      titleTextStyle: headerBold16,
    ),
    colorScheme: const ColorScheme(
        error: errorColor,
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: onPrimaryColor,
        secondary: secondaryColor,
        onSecondary: onSecondaryColor,
        onError: onPrimaryColor,
        background: backgroundColor,
        onBackground: onSurfaceColor,
        surface: surfaceColor,
        onSurface: onSurfaceColor),
  );

// Text Style

  static const TextStyle h3Bold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    height: 1.35,
  );

  static const TextStyle buttonBigRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.50,
  );

  static const TextStyle h3Medium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static const TextStyle h3Regular18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
  static const TextStyle headerBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle headerMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1,
  );
  static const TextStyle headerRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.30,
  );
  static const TextStyle subTitleRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1,
  );
  static const TextStyle bodyBold14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w800,
      letterSpacing: 0,
      height: 1.70);
  static const TextStyle bodyMedium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.70,
  );
  static const TextStyle bodyRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.70,
  );
  static const TextStyle captionBold12 = TextStyle(
    fontSize: 12,
    letterSpacing: 0,
    fontWeight: FontWeight.w800,
    height: 1.30,
  );
  static const TextStyle captionMedium12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.30,
  );

  static const TextStyle captionRgular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.30,
  );
  static const TextStyle buttonBigMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonBigMedium16White = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonBigregular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonMediumBold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonMediumMedium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonMediumMedium14White = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonMediumRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonSmallBold12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonSmallMedium12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle buttonSmallRegular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.50,
  );
  static const TextStyle customHeaderTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 0.06,
  );

  //borders
  static OutlineInputBorder disabledInputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(8.0),
  );
  static OutlineInputBorder primaryInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: secondaryDarkColor,
      width: 2,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(8.0),
  );

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: txtCaptionColor,
      width: 2,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(8.0),
  );

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: secondaryDarkColor,
      width: 2,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(8.0),
  );
}
