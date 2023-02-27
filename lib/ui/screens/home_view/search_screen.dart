import 'package:avocado_healthy_food/business_logic/app_logic/app_cubit.dart';
import 'package:avocado_healthy_food/constants/design_constants/colors_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../constants/data_constants/strings_manager.dart';
import '../../../constants/routes.dart';
import '../../../data/model/recipe_model.dart';
import '../../widgets/recipe_card2.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<RecipeModel>  searched = [];
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    searched.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.primaryColor,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: searchController,
            style: const TextStyle(color: ColorsManager.primaryColorDark),
            cursorColor: ColorsManager.primaryColor,
            decoration:  InputDecoration(
              prefixIcon: const Icon(Icons.search ,color:ColorsManager.primaryColorDark ),
              fillColor: ColorsManager.white,
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              hintText: StringsManager.search.tr(),

            ),
            onChanged: (value) {

              setState(() {
                isSearching = true;
                if (value == '' || value == ' ' ){
                  searched.clear();
                }
                else {
             searched =  AppCubit.get(context).recipesList.where((element) =>element.title.toLowerCase().toString().contains(value) ).toList();
              }
              });

            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: List.generate(
                isSearching ?   searched.length :  AppCubit.get(context).recipesList.length,
                (index) =>  isSearching ? RecipeCard2(
                      indexOfRecipeList: index,
                      list: searched ,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Routes.recipeDetailsScreenRoute,
                          arguments: Arguments(
                            searched,
                              index.toInt()),
                        );
                      },
                    ): RecipeCard2(
                  indexOfRecipeList: index,
                  list: AppCubit.get(context).recipesList,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.recipeDetailsScreenRoute,
                      arguments: Arguments(
                          AppCubit.get(context).recipesList,
                          index.toInt()),
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }
}
