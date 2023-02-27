import 'dart:io';
import 'package:avocado_healthy_food/constants/data_constants/strings_manager.dart';
import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:avocado_healthy_food/ui/screens/home_view/recipes_home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../business_logic/app_logic/app_cubit.dart';
import '../../widgets/category_item.dart';
import 'category_details_screen.dart';
import 'package:new_version/new_version.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  updateApp(context ,newVersion )async {
    final status = await newVersion.getVersionStatus();
    if (status != null) {
      if(status.canUpdate){
        newVersion.showUpdateDialog(
          context: context,
          versionStatus: status,
          dialogTitle: 'Update Available',
          dialogText: 'You can now update this app from ${status.localVersion} to ${status.storeVersion}',
          updateButtonText: 'Update',
          dismissButtonText: 'Maybe Later',
          dismissAction: () => exit(0),);
      }
    }

  }
 @override
  void initState() {


    super.initState();

    final newVersion = NewVersion();

    updateApp(context,newVersion);
  }
  @override
  Widget build(BuildContext context)  {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.searchScreenRoute);
              },
              icon: const Icon(
                Icons.search,
              )),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.settingsScreenRoute);
            },
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
        centerTitle: false,
        title:
        Text(StringsManager.avocado.tr(), style: Theme.of(context).textTheme.titleLarge),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
              child:
              buildCategory(context)),
          const SizedBox(
            height: 15,
          ),
          Container(
              child: AppCubit.get(context).selectedCategoryIndex == 0
                  ? const RecipesHomeScreen()
                  : CategoryDetailScreen(
                indexOfCategory: AppCubit.get(context).selectedCategoryIndex,
              )),
        ],


      ),
    );
  }

  Widget buildCategory(context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15, 5, 7, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          AppCubit.get(context).categories.length,
              (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryItem(
              data: AppCubit.get(context).categories[index],
              isSelected: index == AppCubit.get(context).selectedCategoryIndex,
              onTap: () {

                  AppCubit.get(context).changeCategoryIndex(index);

              },
            ),
          ),
        ),
      ),
    );
  }
}
