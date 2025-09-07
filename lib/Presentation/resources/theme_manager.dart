import 'package:flutter/material.dart';
import 'package:tut_app/Presentation/resources/color_manger.dart';
import 'package:tut_app/Presentation/resources/font_manager.dart';
import 'package:tut_app/Presentation/resources/styles_manager.dart';
import 'package:tut_app/Presentation/resources/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    //main color
    primaryColor: ColorManager.kPrimaryColor,
    primaryColorLight: ColorManager.lightPrimaryColor,
    primaryColorDark: ColorManager.darkPrimaryColor,
    disabledColor: ColorManager.gery1,
    splashColor: ColorManager.lightPrimaryColor,
    //card view theme
    cardTheme: CardThemeData(
      color: ColorManager.white,
      shadowColor: ColorManager.kGreyColor,
      elevation: AppSize.s4,
    ),
    //appBar theme
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.kPrimaryColor,
      centerTitle: true,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimaryColor,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s16,
      ),
    ),
    //button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorManager.kPrimaryColor,
      disabledColor: ColorManager.gery1,
      splashColor: ColorManager.lightPrimaryColor,
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSizeManager.s17,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    //text theme
    textTheme: TextTheme(
      headlineLarge: getBoldStyle(
        color: ColorManager.kDarkGreyColor,
        fontSize: FontSizeManager.s16,
      ),
      titleMedium: getMediumStyle(
        color: ColorManager.kLightGreyCrolor,
        fontSize: FontSizeManager.s14,
      ),
      displayLarge: getLightStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s22,
      ),
      bodyLarge: getRegularStyle(color: ColorManager.gery1),
      bodySmall: getRegularStyle(color: ColorManager.gery2),
    ),
    //input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      ////content padding
      contentPadding: EdgeInsets.all(AppPadding.p8),
      ////hint style
      hintStyle: getRegularStyle(
        color: ColorManager.kGreyColor,
        fontSize: FontSizeManager.s14,
      ),
      labelStyle: getMediumStyle(
        color: ColorManager.kGreyColor,
        fontSize: FontSizeManager.s14,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.error,
        fontSize: FontSizeManager.s14,
      ),
      ////Enabled Border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.kGreyColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      ////Focused Border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.kPrimaryColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      ////Error Border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      ////Error Border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.kPrimaryColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),
  );
}
