import 'package:flutter/material.dart';
import '../../business_logic/app_logic/app_cubit.dart';
import '../../constants/design_constants/colors_manager.dart';
import '../../data/model/recipe_model.dart';
import 'custom_icon_button.dart';

class RecipeCard2 extends StatelessWidget {
  const RecipeCard2(
      {Key? key,
      required this.indexOfRecipeList,
      required this.list,
      this.onTap})
      : super(key: key);

  final List<RecipeModel> list;
  final int indexOfRecipeList;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: ColorsManager.primaryColor.withOpacity(0.25),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Image.asset(list[indexOfRecipeList].image),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(list[indexOfRecipeList].title,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(list[indexOfRecipeList].categoryTitle,
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomIconButton(
                  icon: list[indexOfRecipeList].isBookMark
                      ? Icons.bookmarks
                      : Icons.bookmarks_outlined,
                  onPressed: () {
                    AppCubit.get(context)
                        .changeBookMark(list[indexOfRecipeList].title);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
