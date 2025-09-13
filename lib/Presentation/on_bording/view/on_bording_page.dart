import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tut_app/Domain/models.dart';
import 'package:tut_app/Presentation/resources/values_manager.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({super.key, required this.sliderObject});
  final SliderObject sliderObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: AppSize.s20),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        ////////////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////////
         SizedBox(height: AppSize.s40),
         SizedBox(
          height: 200 ,
          child: SvgPicture.asset(sliderObject.image)),
      ],
    );
  }
}
