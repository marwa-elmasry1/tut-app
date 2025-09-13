import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tut_app/Domain/models.dart';
import 'package:tut_app/Presentation/on_bording/view/on_bording_page.dart';
import 'package:tut_app/Presentation/on_bording/view_model/on_bording_view_model.dart';
import 'package:tut_app/Presentation/resources/assets_manager.dart';
import 'package:tut_app/Presentation/resources/color_manger.dart';
import 'package:tut_app/Presentation/resources/routes_manager.dart';
import 'package:tut_app/Presentation/resources/strings_manager.dart';
import 'package:tut_app/Presentation/resources/values_manager.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  final PageController _pageController = PageController();
  final OnBordingViewModel _viewModel = OnBordingViewModel();

  _bind() {
    _viewModel.start();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
      stream: _viewModel.outputSliderViewObject,
      builder: (context, snapshot) {
        return _getContentWidget(snapshot.data);
      },
    );
  }

  Widget _getContentWidget(SliderViewObject? sliderViewObject) {
    if (sliderViewObject == null) {
      return Container();
    } else {
      return SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.white,
          appBar: AppBar(
            backgroundColor: ColorManager.white,
            elevation: AppSize.s0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.white,
              statusBarBrightness: Brightness.dark,
            ),
          ),
          body: PageView.builder(
            controller: _pageController,
            itemCount: sliderViewObject.numberOfSlides,
            onPageChanged: (index) {
              _viewModel.onPageChanged(index);
            },
            itemBuilder: (context, index) {
              return OnBordingPage(sliderObject: sliderViewObject.sliderObject);
            },
          ),
          bottomSheet: Container(
            color: ColorManager.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(RoutesManager.loginPath);
                    },
                    child: Text(
                      StringsManager.skip,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                _getBottomSheetWidget(sliderViewObject),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget _getBottomSheetWidget(SliderViewObject sliderViewObject) {
    return Container(
      color: ColorManager.kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Left arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              onTap: () {
                _pageController.animateToPage(
                  _viewModel.goPrevious(),
                  duration: Duration(milliseconds: AppCostants.sliderAnimation),
                  curve: Curves.bounceInOut,
                );
              },
              child: SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: IconsManager.arrowBack,
              ),
            ),
          ),

          //Circles Indicators
          Row(
            children: [
              for (int i = 0; i < sliderViewObject.numberOfSlides; i++)
                Padding(
                  padding: EdgeInsets.all(AppPadding.p8),
                  child: _getProperCircle(i, sliderViewObject.currentIndex),
                ),
            ],
          ),
          //Right arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              onTap: () {
                _pageController.animateToPage(
                  _viewModel.goNext(),
                  duration: Duration(milliseconds: AppCostants.sliderAnimation),
                  curve: Curves.bounceInOut,
                );
              },
              child: SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: IconsManager.arrowForward,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getProperCircle(int index, int currentIndex) {
    if (index == currentIndex) {
      return IconsManager.outlineCircle;
    } else {
      return IconsManager.circle;
    }
  }
}
