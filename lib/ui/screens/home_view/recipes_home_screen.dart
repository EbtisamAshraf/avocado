import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:avocado_healthy_food/ui/widgets/recipe_card2.dart';
import 'package:flutter/material.dart';
import '../../../business_logic/app_logic/app_cubit.dart';
import '../../../data/model/recipe_model.dart';
import '../../widgets/recipe_card.dart';

class RecipesHomeScreen extends StatelessWidget {
  const RecipesHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('الأكثر رواجا',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            getPoplarList(context).length,
            (index) => RecipeCard(
              width: 0.5,
              indexOfRecipeList: index,
              list: getPoplarList(context) as List<RecipeModel>,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.recipeDetailsScreenRoute,
                  arguments: Arguments(getPoplarList(context), index.toInt()),
                );
              },
            ),
          )),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'موصى به',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: getRecommendedList(context).length,
            itemBuilder: (BuildContext context, int index) {
              return RecipeCard2(
                indexOfRecipeList: index,
                list: getRecommendedList(context) as List<RecipeModel>,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.recipeDetailsScreenRoute,
                    arguments:
                        Arguments(getRecommendedList(context), index.toInt()),
                  );
                },
              );
            },
          ),
        )),
      ],
    );
  }

  getPoplarList(context) {
    List filter = AppCubit.get(context)
        .recipesList
        .where((element) => element.rate.isOdd)
        .toList();

    return filter;
  }

  getRecommendedList(context) {
    List filter = AppCubit.get(context)
        .recipesList
        .where((element) => element.rate.isEven)
        .toList();

    return filter;
  }
}
