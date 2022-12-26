import 'package:healsense/infastructure/core/constants/typedefs.dart';

import '../../../domain/entities/intro_page_slider.dart';
import '../constants/assets.dart';

class IntroPageSliderUtil {
  static List<IntroPageSlider> getSliders(Loc loc) {
    return [
      IntroPageSlider(
        image: AppAssets.introSliderFirstImage,
        title: loc?.introPageFirstSliderTitle,
        desc: loc?.introPageFirstSliderDesc,
      ),
      IntroPageSlider(
        image: AppAssets.introSliderSecondImage,
        title: loc?.introPageSecondSliderTitle,
        desc: loc?.introPageSecondSliderDesc,
      ),
      IntroPageSlider(
        image: AppAssets.introSliderThirdImage,
        title: loc?.introPageThirdSliderTitle,
        desc: loc?.introPageThirdSliderDesc,
      ),
    ];
  }
}
