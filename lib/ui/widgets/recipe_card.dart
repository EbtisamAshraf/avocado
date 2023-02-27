import 'package:avocado_healthy_food/business_logic/app_logic/app_cubit.dart';
import 'package:avocado_healthy_food/constants/design_constants/colors_manager.dart';
import 'package:flutter/material.dart';
import '../../data/model/recipe_model.dart';
import 'custom_icon_button.dart';

class RecipeCard extends StatelessWidget {
  final List<RecipeModel> list;
  final int indexOfRecipeList;
  final double width;
  final GestureTapCallback? onTap;

  const RecipeCard({
    Key? key,
    required this.indexOfRecipeList,
    required this.list,
    required this.width,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsetsDirectional.only(start: 20, bottom: 5),
        width: MediaQuery.of(context).size.width * width,
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.primaryColorDark.withOpacity(0.6),
              offset: const Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              ColorsManager.primaryColor.withOpacity(0.35),
              BlendMode.multiply,
            ),
            image: AssetImage(list[indexOfRecipeList].image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: ColorsManager.black.withOpacity(0.4),
                  child: Text(
                    list[indexOfRecipeList].title,
                    style: const TextStyle(
                        fontSize: 16,
                        color: ColorsManager.white,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomIconButton(
                    icon: list[indexOfRecipeList].isBookMark
                        ? Icons.bookmarks
                        : Icons.bookmarks_outlined,
                    onPressed: () {
                      AppCubit.get(context)
                          .changeBookMark(list[indexOfRecipeList].title);
                    }),
              ),
              alignment: AlignmentDirectional.topEnd,
            ),
          ],
        ),
      ),
    );
  }
}
