import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';
import 'package:avocado_healthy_food/constants/data_constants/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../data/model/onboarrding_model.dart';

class CollectionsManager {
  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: ImageAssets.onBoardingImage1,
      title: StringsManager.onBoardingTitle1.tr(),
    ),
    OnBoardingModel(
      image: ImageAssets.onBoardingImage2,
      title:  StringsManager.onBoardingTitle2.tr(),
    ),
    OnBoardingModel(
      image: ImageAssets.onBoardingImage3,
      title:  StringsManager.onBoardingTitle3.tr(),
    ),
    OnBoardingModel(
        image: ImageAssets.onBoardingImage4,
        title:  StringsManager.onBoardingTitle4.tr())
  ];


}
