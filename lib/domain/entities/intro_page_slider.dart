import 'package:freezed_annotation/freezed_annotation.dart';

part 'intro_page_slider.freezed.dart';

@freezed
class IntroPageSlider with _$IntroPageSlider {
  const factory IntroPageSlider({
    required String image,
    required String? title,
    required String? desc,
  }) = _IntroPageSlider;
}
