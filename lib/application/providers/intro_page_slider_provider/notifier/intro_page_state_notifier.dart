import 'dart:async';

import 'package:fpdart/fpdart.dart' show some;
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/infastructure/core/constants/durations.dart';
import 'package:healsense/infastructure/core/constants/typedefs.dart';
import 'package:healsense/infastructure/core/utils/intro_page_slider_util.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain/entities/intro_page_slider.dart';
import '../../../../domain/repositories/preferences_repository.dart';
import '../state/intro_page_state.dart';

class IntroPageStateNotifier extends StateNotifier<IntroPageState> {
  final PreferencesRepository preferencesRepository;
  final Loc loc;

  IntroPageStateNotifier({
    required this.preferencesRepository,
    required this.loc,
  }) : super(IntroPageState.initial()) {
    _initSliders();
    _initPageController();
  }

  final PageController pageController = PageController(initialPage: 0);
  final _pageIndexStream = BehaviorSubject<int>.seeded(0);

  int _currentPage = 0;

  List<IntroPageSlider> items = [];

  void triggerRouteToHomePage() async {
    state = state.copyWith(isLoading: true);

    final result = await preferencesRepository.storeIntroPageSeen();

    await _addDelay(Durations.eightHundredMillisecondsDuration);

    if (result.isSuccess()) {
      Fimber.d('Successfully navigated to home page');
    } else {
      Fimber.e('Error happened while navigating to home page');
    }

    state = state.copyWith(
      failureOrSuccessOption: some(result),
      isLoading: false,
    );
  }

  void _initPageController() {
    pageController.addListener(() => onPageControllerChange(_currentPage));

    autoAnimateToNextPage();

    Fimber.d('Sliders has been loaded successfully 🔄');
  }

  void _initSliders() => items = IntroPageSliderUtil.getSliders(loc);

  void onPageChanged(int index) => _currentPage = index;

  onPageControllerChange(int index) => _pageIndexStream.add(index);

  void animateToNextPage(int index) {
    if (slidersCount != index) {
      pageController.animateToPage(index,
          duration: Durations.eightHundredMillisecondsDuration,
          curve: Curves.fastOutSlowIn);
    }
  }

  void autoAnimateToNextPage() {
    Timer.periodic(Durations.sevenSecondsDuration, (Timer timer) {
      if (_currentPage < slidersCount - 1) {
        _currentPage++;
      } else if (_currentPage == slidersCount - 1) {
        timer.cancel();
      } else {
        _currentPage = 0;
      }
      if (pageController.hasClients) {
        animateToNextPage(_currentPage);
      }
    });
  }

  int get slidersCount => items.length;

  _addDelay(Duration delay) async => await Future.delayed(delay);

  @override
  void dispose() {
    pageController.removeListener(onPageControllerChange(_currentPage));
    pageController.dispose();
    _pageIndexStream.close();
    super.dispose();
  }
}

extension IntroPageSliderChangeNotifierRxExtension on IntroPageStateNotifier {
  Stream<int> get pageIndexStream => _pageIndexStream.stream;
  int? get pageIndex => _pageIndexStream.value;
}
