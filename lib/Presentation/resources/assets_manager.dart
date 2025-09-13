import 'package:flutter/material.dart';
import 'package:tut_app/Presentation/resources/color_manger.dart';
import 'package:tut_app/Presentation/resources/values_manager.dart';

const String imagesMainPath = 'assets/images';

class ImageAssets{
  static const String splashLogo = '$imagesMainPath/splash_logo.png';
  static const String onboardingLogo1 = '$imagesMainPath/onboarding_logo1.svg';
  static const String onboardingLogo2 = '$imagesMainPath/onboarding_logo2.svg';
  static const String onboardingLogo3 = '$imagesMainPath/onboarding_logo3.svg';
  static const String onboardingLogo4 = '$imagesMainPath/onboarding_logo4.svg'; 
}

class IconsManager{
  static final Icon arrowForward = Icon(Icons.arrow_forward_ios,color: ColorManager.white,size:AppSize.s14);
  static final Icon arrowBack = Icon(Icons.arrow_back_ios,color: ColorManager.white,size:AppSize.s14);
  static final Icon outlineCircle = Icon(Icons.circle_outlined,color: ColorManager.white,size:AppSize.s12);
  static final Icon circle = Icon(Icons.circle,color: ColorManager.white,size:AppSize.s12);
}