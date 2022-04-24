

import 'package:avocado_healthy_food/constants/data_constants/collections_manager.dart';

import '../../business_logic/App_logic/App_cubit.dart';

class RecipeModel {

  String title;
  String image;
  List ingredients;
  List preparation;
  AvocadoCategory category = AvocadoCategory.meals;
  String categoryTitle = '';
  bool isBookMark;
  int rate;

  RecipeModel(
      {required this.title,
      required this.image,
      required this.ingredients,
      required this.preparation,
      required this.category,
      required this.isBookMark,
      required this.rate,
      required this.categoryTitle,


      });


}

