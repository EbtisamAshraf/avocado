import 'package:avocado_healthy_food/constants/data_constants/strings_manager.dart';
import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:avocado_healthy_food/ui/screens/home_view/recipes_home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../constants/data_constants/collections_manager.dart';
import '../../widgets/category_item.dart';
import 'category_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(child: buildCategory()),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: selectedCategoryIndex == 0
                  ? const RecipesHomeScreen()
                  : CategoryDetailScreen(
                      indexOfCategory: selectedCategoryIndex,
                    )),
        ],
      ),
    );
  }

  int selectedCategoryIndex = 0;

  Widget buildCategory() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15, 5, 7, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          CollectionsManager.categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryItem(
              data: CollectionsManager.categories[index],
              isSelected: index == selectedCategoryIndex,
              onTap: () {
                setState(() {
                  selectedCategoryIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
