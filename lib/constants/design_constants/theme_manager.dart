import 'package:avocado_healthy_food/constants/design_constants/sizes_manager.dart';
import 'package:avocado_healthy_food/constants/design_constants/styles_manager.dart';
import 'package:flutter/material.dart';
import 'colors_manager.dart';

class ThemeManager {
  static ThemeData lightTheme() {
    return ThemeData(
      // main color
      primaryColor: ColorsManager.primaryColor,
      shadowColor: ColorsManager.secondaryColor,
      hoverColor: ColorsManager.primaryColorDark,
      primaryColorDark: ColorsManager.primaryColorDark,
      disabledColor: ColorsManager.gray,
      splashColor: ColorsManager.primaryColorDark,
      toggleableActiveColor: ColorsManager.primaryColorDark,

      primaryIconTheme:
          const IconThemeData(color: ColorsManager.primaryColorDark),

      // card theme
      cardTheme: CardTheme(
        color: ColorsManager.white,
        shadowColor: ColorsManager.gray,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizesManager.s20)),
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: ColorsManager.white,
      ),
      // text theme
      textTheme: const TextTheme(
        // recipe name in cards
        titleLarge: TextStyle(fontWeight: FontWeight.bold),
        // Restaurants name & recipe name in details screen
        headlineMedium:
            TextStyle(fontWeight: FontWeight.bold, color: ColorsManager.black),
        // subtitle in card & about dev
        titleMedium: TextStyle(
            color: ColorsManager.primaryColorDark, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(
          color: ColorsManager.black,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          color: ColorsManager.black,
          fontWeight: FontWeight.bold,
        ),
      ),

      // appbar theme
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsManager.primaryColor,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: ColorsManager.black),
        titleTextStyle: TextStylesManager.semiBoldStyle(),
        centerTitle: true,
      ),

      // elevated ButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle:
                  TextStylesManager.semiBoldStyle(color: ColorsManager.black),
              primary: ColorsManager.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SizesManager.s14)))),

      // input decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(PaddingSizes.p10),
        hintStyle: TextStylesManager.regularStyle(color: ColorsManager.gray),
        labelStyle: TextStylesManager.regularStyle(color: ColorsManager.black),
        errorStyle: TextStylesManager.regularStyle(color: ColorsManager.red),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager.primaryColorDark, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s20))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager.secondaryColor, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s20))),
        errorBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorsManager.red, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s14))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager.primaryColor, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s14))),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      // main color
      primaryColor: ColorsManager.primaryColor,
      shadowColor: ColorsManager.secondaryColor,
      hoverColor: ColorsManager.primaryColorDark,
      primaryColorDark: ColorsManager.primaryColorDark,
      disabledColor: ColorsManager.gray2,
      splashColor: ColorsManager.primaryColor,
      toggleableActiveColor: ColorsManager.primaryColor,
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(
          ColorsManager.primaryColor,
        ),
      ),

      scaffoldBackgroundColor: ColorsManager.black45,
      iconTheme: const IconThemeData(color: ColorsManager.primaryColor),

      primaryIconTheme:
          const IconThemeData(color: ColorsManager.primaryColorDark),

      // card theme
      cardTheme: CardTheme(
        color: ColorsManager.gray2.withOpacity(0.1),
        shadowColor: ColorsManager.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizesManager.s20)),
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: ColorsManager.black,
      ),
      // text theme
      textTheme: const TextTheme(
        // recipe name in cards
        titleLarge:
            TextStyle(fontWeight: FontWeight.bold, color: ColorsManager.white),
        // Restaurants name & recipe name in details screen
        headlineMedium:
            TextStyle(fontWeight: FontWeight.bold, color: ColorsManager.white),
        // subtitle in card & about dev
        titleMedium: TextStyle(
          color: ColorsManager.primaryColorDark,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          color: ColorsManager.white,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          color: ColorsManager.white,
          fontWeight: FontWeight.bold,
        ),
      ),

      // appbar theme
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsManager.primaryColor,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: ColorsManager.white),
        titleTextStyle: TextStylesManager.semiBoldStyle(),
        centerTitle: true,
      ),

      // elevated ButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle:
                  TextStylesManager.semiBoldStyle(color: ColorsManager.white),
              primary: ColorsManager.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SizesManager.s14)))),

      // input decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(PaddingSizes.p10),
        hintStyle: TextStylesManager.regularStyle(color: ColorsManager.gray),
        labelStyle: TextStylesManager.regularStyle(color: ColorsManager.white),
        errorStyle: TextStylesManager.regularStyle(color: ColorsManager.red),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager.primaryColorDark, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s20))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager.secondaryColor, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s20))),
        errorBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorsManager.red, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s14))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorsManager.primaryColor, width: SizesManager.s1),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s14))),
      ),
    );
  }
}
