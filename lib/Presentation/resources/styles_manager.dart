import 'package:flutter/material.dart';
import 'package:tut_app/Presentation/resources/font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color){
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}
  
//light Style
  TextStyle getLightStyle({double fontSize = FontSizeManager.s12, required Color color}){
    return _getTextStyle(fontSize, FontWeightManager.light, color);
}
//regular Style
  TextStyle getRegularStyle({double fontSize = FontSizeManager.s12, required Color color}){
    return _getTextStyle(fontSize, FontWeightManager.regular, color);
}
//medium Style
  TextStyle getMediumStyle({double fontSize = FontSizeManager.s12, required Color color}){
    return _getTextStyle(fontSize, FontWeightManager.mediun, color);
}
//semibold Style
  TextStyle getSemiBoldStyle({double fontSize = FontSizeManager.s12, required Color color}){
    return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
//Bold Style
  TextStyle getBoldStyle({double fontSize = FontSizeManager.s12, required Color color}){
    return _getTextStyle(fontSize, FontWeightManager.bold, color);
}