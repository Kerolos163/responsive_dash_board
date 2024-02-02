import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: const Color(0xffAAAAAA),
      );
  static TextStyle styleRegular14(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: const Color(0xffAAAAAA),
      );
  static TextStyle styleRegular16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: const Color(0xff064060),
      );

  static TextStyle styleMedium16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: const Color(0xff064060),
      );
  static TextStyle styleSemiBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: const Color(0xff064060),
      );
  static TextStyle styleBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat',
        color: const Color(0xff4AB7f2),
      );

  static TextStyle styleSemiBold18(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: const Color(0xffFFFFFF),
      );
  static TextStyle styleSemiBold20(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: const Color(0xff064060),
      );
  static TextStyle styleMedium20(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: const Color(0xffFFFFFF),
      );
  static styleSemiBold24(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: const Color(0xff4AB7f2),
      );
}

// sacleFactor
// responsiColor.fromARGB(255, 42, 87, 111)(min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1800;
  }
}
