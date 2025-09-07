import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tut_app/Presentation/resources/assets_manager.dart';
import 'package:tut_app/Presentation/resources/color_manger.dart';
import 'package:tut_app/Presentation/resources/routes_manager.dart';
import 'package:tut_app/Presentation/resources/values_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
      Timer? _timer; 
    _startDelayed(){
      _timer = Timer(const Duration(seconds: AppCostants.splashDelay), _goNext);
    }
    _goNext (){
      Navigator.pushReplacementNamed(context ,RoutesManager.onBordingPath );
      }

      @override
  void initState() {
    super.initState();
    _startDelayed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Center(
        child: const Image(image: AssetImage(ImageAssets.splashLogo)),
      ),
    );
  }
    @override
  void dispose() {
_timer?.cancel();
    super.dispose();
  }
}
