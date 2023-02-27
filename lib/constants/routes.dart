import 'package:avocado_healthy_food/ui/screens/home_view/recipes_home_screen.dart';
import 'package:avocado_healthy_food/ui/screens/recipe_details_view/recipe_details_screen.dart';
import 'package:flutter/material.dart';
import '../data/model/recipe_model.dart';
import '../ui/screens/home_view/category_details_screen.dart';
import '../ui/screens/home_view/home_screen.dart';
import '../ui/screens/home_view/search_screen.dart';
import '../ui/screens/settings_view/about_developer_screen.dart';
import '../ui/screens/settings_view/bookmarks_screen.dart';
import '../ui/screens/settings_view/language_screen.dart';
import '../ui/screens/settings_view/settings_screen.dart';
import '../ui/screens/splash_view/splash _screen/on_boarding_screen.dart';
import '../ui/screens/splash_view/splash _screen/splash_screen.dart';
import 'data_constants/strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String homeScreenRoute = "/home";
  static const String recipeDetailsScreenRoute = "/recipeDetails";
  static const String recipeHomeScreenRoute = "/recipeHome";
  static const String settingsScreenRoute = "/settings";
  static const String categoryDetailScreenRoute = "/categoryDetail";
  static const String aboutDeveloperScreenRoute = "/aboutDeveloper";
  static const String searchScreenRoute = "/search";
  static const String bookmarksScreenRoute = "/bookmarks";
  static const String languageScreenRoute = "/language";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());

      case Routes.homeScreenRoute:
        return MaterialPageRoute(builder: (_) =>  Builder(
            builder: (context) {
              if(MediaQuery.of(context).size.width.toInt() >= 700){
                return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.5),
                    child:  HomeScreen() );
              }
              else {
                return  HomeScreen();
              }
            }
        ));

      case Routes.recipeHomeScreenRoute:
        return MaterialPageRoute(builder: (_) => const RecipesHomeScreen());

      case Routes.recipeDetailsScreenRoute:
        Arguments arguments = settings.arguments as Arguments;

        return MaterialPageRoute(
            builder: (_) => RecipeDetails(
                  indexOfRecipeList: arguments.indexOfRecipeList,
                  list: arguments.list,
                ));

      case Routes.settingsScreenRoute:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      case Routes.categoryDetailScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const CategoryDetailScreen(
                  indexOfCategory: 0,
                ));

      case Routes.aboutDeveloperScreenRoute:
        return MaterialPageRoute(builder: (_) => const AboutDeveloperScreen());

      case Routes.searchScreenRoute:
        return MaterialPageRoute(builder: (_) => const SearchScreen());

      case Routes.bookmarksScreenRoute:
        return MaterialPageRoute(builder: (_) => const BookmarksScreen());
      case Routes.languageScreenRoute:
        return MaterialPageRoute(builder: (_) => const LanguageScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(StringsManager.noRouteFound),
              ),
              body: const Center(child: Text(StringsManager.noRouteFound)),
            ));
  }
}
