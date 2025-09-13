import 'dart:async';

import 'package:tut_app/Domain/models.dart';
import 'package:tut_app/Presentation/base/base_view_model.dart';
import 'package:tut_app/Presentation/resources/assets_manager.dart';
import 'package:tut_app/Presentation/resources/strings_manager.dart';

class OnBordingViewModel extends BaseViewModel
    implements OnBordingViewModelInputs, OnBordingViewModelOutputs {
  final StreamController _streamController =
      StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    // view model start your job
    _list = getSliderData();
    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  //onBoarding private functions
  void _postDataToView() {
    inputSliderViewObject.add(
      SliderViewObject(_list[_currentIndex], _list.length, _currentIndex),
    );
  }

  List<SliderObject> getSliderData() => [
    SliderObject(
      StringsManager.onBordingTitle1,
      StringsManager.onBordingSubTitle1,
      ImageAssets.onboardingLogo1,
    ),
    SliderObject(
      StringsManager.onBordingTitle2,
      StringsManager.onBordingSubTitle2,
      ImageAssets.onboardingLogo2,
    ),
    SliderObject(
      StringsManager.onBordingTitle3,
      StringsManager.onBordingSubTitle3,
      ImageAssets.onboardingLogo3,
    ),
    SliderObject(
      StringsManager.onBordingTitle4,
      StringsManager.onBordingSubTitle4,
      ImageAssets.onboardingLogo4,
    ),
  ];
}

// inputs means that "orders" that our view model will recive from view
abstract class OnBordingViewModelInputs {
  int goNext(); // right arrow
  int goPrevious(); // left arrow
  void onPageChanged(int index);

  // stram controller input
  Sink get inputSliderViewObject;
}

abstract class OnBordingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}
