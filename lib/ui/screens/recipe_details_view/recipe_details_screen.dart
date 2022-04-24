import 'package:avocado_healthy_food/constants/design_constants/colors_manager.dart';
import 'package:flutter/material.dart';
import '../../../business_logic/App_logic/App_cubit.dart';
import '../../../data/model/recipe_model.dart';
import '../../widgets/custom_icon_button.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({Key? key, required this.list , required this.indexOfRecipeList,}) : super(key: key);
  final List<RecipeModel> list;
 final  int indexOfRecipeList ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            height: MediaQuery.of(context).size.height * 0.4,
            child:  BuildRecipeImage(image: list[indexOfRecipeList].image),
          ),
          PositionedDirectional(
            top: MediaQuery.of(context).size.height * 0.3,
            child:  BuildRecipeDetails(indexOfRecipeList:indexOfRecipeList ,list:list),
          ),
          PositionedDirectional(
            top: 35,
            start: 20,
            child:CustomIconButton(icon: Icons.adaptive.arrow_back ,onPressed: (){
              Navigator.of(context).pop();
            }),

          ),
           PositionedDirectional(
            top: 35,
            end: 20,
            child:CustomIconButton(
                icon: list[indexOfRecipeList].isBookMark ?Icons.bookmarks :Icons.bookmarks_outlined ,
                onPressed:(){
                  AppCubit.get(context).changeBookMark(list[indexOfRecipeList].title);
                }),
          ),
        ],
      ),
    );
  }
}

class BuildRecipeImage extends StatelessWidget {
 final String image;

  const BuildRecipeImage({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(image,
          fit: BoxFit.cover),
    );
  }
}

class BuildRecipeIngredients extends StatelessWidget {
  const BuildRecipeIngredients({Key? key, required this.list, required this.indexOfRecipeList}) : super(key: key);
  final List<RecipeModel> list;
  final  int indexOfRecipeList ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
          children: List.generate(
        list[indexOfRecipeList].ingredients.length,
        (index) => Container(
          padding: const EdgeInsets.all(3.0),
          // width: MediaQuery.of(context).size.width * 0.20,
          height: MediaQuery.of(context).size.height * 0.09,
          child: Card(
            elevation: 3,
            // shadowColor: ColorsManager.primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                    list[indexOfRecipeList].ingredients[index],
                style: Theme.of(context).textTheme.titleLarge,
              )),
            ),
          ),
        ),
      )),
    );
  }
}

class BuildRecipePreparation extends StatelessWidget {
  const BuildRecipePreparation({Key? key, required this.list, required this.indexOfRecipeList}) : super(key: key);
  final List<RecipeModel> list;
  final  int indexOfRecipeList ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 75,
        childDelegate: ListWheelChildBuilderDelegate(

          builder: (BuildContext context, int index) {
            if (index < 0 ||
                index >
                    list[indexOfRecipeList].preparation.length - 1) {
              return null;
            }
            return ListTile(
              style: Theme.of(context).listTileTheme.style,
              leading: Text(
                "${index + 1}",
                style: const TextStyle(
                    fontSize: 40, color: ColorsManager.primaryColorDark),
              ),
              title: Text(list[indexOfRecipeList].preparation[index],
                  style: Theme.of(context).textTheme.titleLarge),
              // subtitle: Text('Description here Description here'),
            );
          },
        ),
      ),
    );
  }
}

class BuildRecipeDetails extends StatelessWidget {
  const BuildRecipeDetails({Key? key, required this.list, required this.indexOfRecipeList}) : super(key: key);
  final List<RecipeModel> list;
  final  int indexOfRecipeList ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(40),
            topEnd: Radius.circular(40),
          ),
          // color: ColorsManager.grayTrans,
          boxShadow: [
            BoxShadow(
                color: ColorsManager.primaryColor,
                spreadRadius: 0,
                blurRadius: 1),
          ]),
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(list[indexOfRecipeList].title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: ColorsManager.primaryColorDark,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 35,
                ),
                Text('المكونات',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 20,
                ),
                 BuildRecipeIngredients(indexOfRecipeList:indexOfRecipeList ,list:list),
                const SizedBox(
                  height: 30,
                ),
                Text('طريقة التحضير',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 10,
                ),
                 BuildRecipePreparation(indexOfRecipeList:indexOfRecipeList ,list:list),
              ],
            ),
          )),
    );
  }
}
