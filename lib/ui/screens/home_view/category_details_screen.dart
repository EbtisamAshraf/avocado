import 'package:avocado_healthy_food/ui/widgets/recipe_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../business_logic/app_logic/app_cubit.dart';
import '../../../constants/data_constants/strings_manager.dart';
import '../../../constants/routes.dart';
import '../../../data/model/recipe_model.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({Key? key, required this.indexOfCategory})
      : super(key: key);
  final int indexOfCategory;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: List.generate(
                getCategoryList(context, indexOfCategory).length,
                (index) => Padding(
                      padding:
                          const EdgeInsetsDirectional.only(end: 20, bottom: 20),
                      child: RecipeCard(
                          width: 0.9,
                          list: getCategoryList(context, indexOfCategory),
                          indexOfRecipeList: index,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              Routes.recipeDetailsScreenRoute,
                              arguments: Arguments(
                                  getCategoryList(context, indexOfCategory),
                                  index.toInt()),
                            );
                          }),
                    ))),
      ),
    );
  }

  List<RecipeModel> getCategoryList(context, index) {
    if (index == 1) {
      List<RecipeModel> mealsList = AppCubit.get(context)
          .recipesList
          .where((element) => element.categoryTitle == StringsManager.meals.tr())
          .toList();
      return mealsList;
    } else if (index == 2) {
      List<RecipeModel> saladsList = AppCubit.get(context)
          .recipesList
          .where((element) => element.categoryTitle == StringsManager.salads.tr())
          .toList();
      return saladsList;
    } else if (index == 3) {
      List<RecipeModel> drinksList = AppCubit.get(context)
          .recipesList
          .where((element) => element.categoryTitle == StringsManager.drinks.tr())
          .toList();
      return drinksList;
    }
    return [];
  }
}
