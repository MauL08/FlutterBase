// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConfig {}

//Padding data
const double padding3XS = 1;
const double padding2XS = 2;
const double paddingXS = 4;
const double paddingS = 6;
const double paddingM = 8;
const double paddingL = 12;
const double paddingXL = 18;
const double padding2XL = 24;
const double padding3XL = 28;
const double padding4XL = 32;
const double padding5XL = 36;
const double padding6XL = 64;
const double padding7XL = 72;
const double padding8XL = 92;
EdgeInsetsGeometry defaultPagePadding = EdgeInsets.only(
    left: paddingL,
    right: paddingL,
    top: paddingL,
    bottom: (WidgetsBinding.instance.window.padding.bottom == 0)
        ? padding8XL + paddingL
        : paddingL + WidgetsBinding.instance.window.padding.bottom);

EdgeInsetsGeometry defaultPagePaddingWithoutBottomSafeArea =
    const EdgeInsets.only(left: paddingL, right: paddingL, top: paddingL);
//Text data
TextStyle heading1Style =
    GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w700);
TextStyle heading2Style =
    GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w700);
TextStyle heading3Style =
    GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w700);
TextStyle heading4Style =
    GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w700);
TextStyle normalTextStyle =
    GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.normal);

TextStyle textPrimaryButtonStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Get.theme.colorScheme.onPrimary);
TextStyle textSecondaryButtonStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Get.theme.colorScheme.onSurface);

class Stringer {
  static String get API_URL {
    // THIS CONTAIN apiUrl that given from Env

    // String apiUrl = dotenv.get("API_URL");

    return 'apiUrl';
  }

  static String get JSONUrl =>
      'https://roastkuy-public.s3.ap-southeast-3.amazonaws.com/json';

  static String get LAST_UPDATED => 'last-updated.json';
  static String get LIST_OUTLET => 'outlet-roastkuy.json';
  static String get LIST_PROMO => 'roastkuy-promo.json';

  static String get EMAIL => 'mailto:roastkuy@gmail.com';
  static String get PHONE => '6285171590732';
  static String get WHATSAPP => 'https://wa.me/6285171590732';
  static String get TIKTOK =>
      'https://www.tiktok.com/@roastkuy?_t=8VJVnALTrHe&_r=1';
  static String get INSTAGRAM =>
      'https://www.instagram.com/roastkuy?igshid=YmMyMTA2M2Y=';

  static String get LOGIN => 'login';
  static String get REGISTER => 'register';
  static String get LOGOUT => 'logout';
  static String get ACCOUNT => 'account';
  static String get ACCOUNT_EDIT => 'account-edit';
  static String get OTP => 'verification-account';
  static String get ALL_PROMO => 'promo';
  static String get PROMO_REGULER => 'promo-regular';
}

class ColorUI {
  static const Color PRIMARY = Color(0xFFEE472E);
  static const Color SECONDARY = Color(0xFFF5B553);
  static const Color RED = PRIMARY;
  static const Color BACKGROUND_COLOR = Color(0xFFF5F5F5);
  static const Color BLACK = Color(0xFF363233);
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color PINK = Color(0xFFFBEBE8);
  static const Color GREY = Color(0x50363233);
  static const Color CREAM = Color(0xFFFAD9C8);
  static const Color BROWN_ICON = Color(0xFF715349);
  static const Color BROWN_BORDER = Color(0xFF715349);
  static const Color BROWN_TEXT = Color(0xFF9F877D);
  static const Color BLACK_TEXT = Color(0xFF363233);
  static const Color BLACK_INPUT_TEXT = Color(0xFF363233);
  static const Color WHITE_TEXT = Color(0xFFFFFFFF);
  static const List<Color> LINEAR_COLOR = [
    Color(0xFFEF7E6E),
    Color(0xFFEE523B),
    Color(0xFFEE523B),
  ];
  static const Color SHIMMER_BASE = Color(0xFFE0E0E0);
  static const Color SHIMMER_HIGHLIGHT = Color(0xFFF5F5F5);
}

class FontUI {
  static const FontWeight WEIGHT_LIGHT = FontWeight.w400;
  static const FontWeight WEIGHT_MEDIUM = FontWeight.w500;
  static const FontWeight WEIGHT_BOLD = FontWeight.w600;
}

TextStyle PRIMARY_TEXT_STYLE = GoogleFonts.poppins(color: ColorUI.PRIMARY);
TextStyle BLACK_TEXT_STYLE = GoogleFonts.poppins(color: ColorUI.BLACK_TEXT);
TextStyle WHITE_TEXT_STYLE = GoogleFonts.poppins(color: ColorUI.WHITE_TEXT);
TextStyle BROWN_TEXT_STYLE = GoogleFonts.poppins(color: ColorUI.BROWN_TEXT);
TextStyle INPUT_TEXT_STYLE = GoogleFonts.poppins(
    color: ColorUI.BLACK_INPUT_TEXT.withOpacity(0.5),
    fontSize: 12,
    letterSpacing: 0.5,
    fontWeight: FontUI.WEIGHT_LIGHT);
TextStyle GREY_TEXT_STYLE =
    GoogleFonts.poppins(color: ColorUI.BLACK_TEXT.withOpacity(0.70));
TextStyle TITLE_GREY_TEXT_STYLE =
    GoogleFonts.poppins(color: ColorUI.BLACK_TEXT.withOpacity(0.50));

class BorderUI {
  static const double RADIUS_CIRCULAR = 8.0;
  static const double RADIUS_BUTTON = 15.0;
  static const double RADIUS_ROUNDMORE = 40.0;
  static const double RADIUS_ROUNDED = 20.0;
}

List<BoxShadow> containerShadow({
  double blurRadius = 7,
  double spreadRadius = 5,
  Offset offset = const Offset(0, 3),
}) {
  return [
    BoxShadow(
      color: ColorUI.BLACK.withOpacity(0.2),
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
      offset: offset,
    ),
  ];
}

LinearGradient gradientColor() {
  return const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFEF7E6E),
      Color(0xFFEE523B),
      Color(0xFFEE523B),
    ],
  );
}

List<Widget> notchBottomSheet() {
  return [
    const SizedBox(height: 12.0),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: 50,
          height: 5,
          decoration: const BoxDecoration(
            color: ColorUI.BROWN_BORDER,
            borderRadius: BorderRadius.all(
              Radius.circular(BorderUI.RADIUS_ROUNDED),
            ),
          ),
        ),
      ],
    ),
    const SizedBox(height: 30.0),
  ];
}
