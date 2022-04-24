import 'package:avocado_healthy_food/constants/design_constants/colors_manager.dart';
import 'package:flutter/material.dart';

import '../../../constants/data_constants/assets_manager.dart';
import '../../widgets/recipe_card2.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List searched = [];

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
        backgroundColor:ColorsManager.primaryColor ,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 ),
          child: TextField(
            controller:searchController ,
            cursorColor:ColorsManager.primaryColor,
            decoration:   const InputDecoration(
              prefixIcon: Icon(Icons.search),
              fillColor: ColorsManager.white,
               filled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15 ,),
              hintText: 'بحث',
            ),
            onChanged: (value){

              setState(() {
                if (value == '' || value == ' ' ){
                  // searched.clear();
                } else {
                  // searched = Repo.generalSpecialties.where((element) => element[0].toString().toLowerCase().contains(value)).toList();
                }
              });

            },
          ),
        ),
        // leading: IconButton(icon:Icon(Icons.arrow_back) ,onPressed: (){},),

      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              // RecipeCard2(title:'مخبوزات الجزيرة' ,category:'وجبات' ,image: ImageAssets.bakery),
              // RecipeCard2(title:'مخبوزات الجزيرة' ,category:'وجبات' ,image: ImageAssets.bakery),
              // RecipeCard2(title:'مخبوزات الجزيرة' ,category:'وجبات' ,image: ImageAssets.bakery),
              // RecipeCard2(title:'مخبوزات الجزيرة' ,category:'وجبات' ,image: ImageAssets.bakery),
              // RecipeCard2(title:'مخبوزات الجزيرة' ,category:'وجبات' ,image: ImageAssets.bakery),
              // RecipeCard2(title:'مخبوزات الجزيرة' ,category:'وجبات' ,image: ImageAssets.bakery),

            ],
          ),
        ),
      ),
    );
  }
}
