import 'package:flutter/material.dart';
import '../../../business_logic/app_logic/app_cubit.dart';
import '../../../constants/routes.dart';
import '../../../data/model/recipe_model.dart';
import '../../widgets/recipe_card2.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('المختارات',style: Theme.of(context).textTheme.titleLarge)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:Column(
            children:List.generate(
                getBookMarkList(context).length,
                (index) =>  RecipeCard2(
                  indexOfRecipeList:index,
                  list:getBookMarkList(context),
                  onTap: (){
                    Navigator.pushNamed(context, Routes.recipeDetailsScreenRoute , arguments:Arguments(getBookMarkList(context),  index.toInt()), );
                  },))
          )

          ),
        ),
      );

  }
  List<RecipeModel> getBookMarkList(context){

    List<RecipeModel> filter =  AppCubit.get(context).recipesList.where((element) => element.isBookMark == true ).toList();

    return filter;
  }

  getPoplarList(BuildContext context) {}
}
