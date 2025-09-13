import 'package:flutter/material.dart';
import 'package:tut_app/Presentation/Login/login_view.dart';
import 'package:tut_app/Presentation/Register/register_view.dart';
import 'package:tut_app/Presentation/Splash/splash_view.dart';
import 'package:tut_app/Presentation/detail/detail_view.dart';
import 'package:tut_app/Presentation/home/home_view.dart';
import 'package:tut_app/Presentation/on_bording/view/on_bording_view.dart';
import 'package:tut_app/Presentation/reset_pass/reset_pass_view.dart';
import 'package:tut_app/Presentation/resources/color_manger.dart';
import 'package:tut_app/Presentation/resources/strings_manager.dart';
import 'package:tut_app/Presentation/resources/styles_manager.dart';

class RoutesManager {
  static const String splashPath = '/';
  static const String onBordingPath = '/bording';
  static const String loginPath = '/login';
  static const String registerPath = '/register';
  static const String resetPassPath = '/resetPass';
  static const String homePath = '/home';
  static const String detailPath = '/detail';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splashPath:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RoutesManager.onBordingPath:
        return MaterialPageRoute(builder: (_) => const OnBordingView());
      case RoutesManager.loginPath:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RoutesManager.registerPath:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case RoutesManager.resetPassPath:
        return MaterialPageRoute(builder: (_) => const ResetPassView());
      case RoutesManager.homePath:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case RoutesManager.detailPath:
        return MaterialPageRoute(builder: (_) => const DetailView());
      default:
        return unDefiendPath();
    }
  }

  static Route<dynamic> unDefiendPath() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              StringsManager.error,
              style: getRegularStyle(color: ColorManager.error),
            ),
          ),
          body: Center(
            child: Text(
              StringsManager.noRouteFound,
              style: getSemiBoldStyle(color: ColorManager.error),
            ),
          ),
        );
      },
    );
  }
}
