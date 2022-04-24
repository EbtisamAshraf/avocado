import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';
import '../../data/model/onboarrding_model.dart';

class CollectionsManager {
  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: ImageAssets.onBoardingImage1,
      title: 'تبحث عن حياة صحية ؟',
    ),
    OnBoardingModel(
      image: ImageAssets.onBoardingImage2,
      title: ' تريد وصفات صحية ولذيذة',
    ),
    OnBoardingModel(
      image: ImageAssets.onBoardingImage3,
      title: 'حضر بنفسك وجبتك الصحية اللذيذة',
    ),
    OnBoardingModel(
        image: ImageAssets.onBoardingImage4, title: 'واستمتع بالمذاق الطيب')
  ];

  static List categories = [
    {"name": "الكل", "icon": ImageAssets.logo},
    {"name": "الوجبات", "icon": ImageAssets.meal1},
    {"name": "السلطات", "icon": ImageAssets.salad1},
    {"name": "العصائر", "icon": ImageAssets.strawberryDrink},
  ];
}
