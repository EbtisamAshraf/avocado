import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';
import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../business_logic/app_logic/app_cubit.dart';
import '../../../constants/data_constants/strings_manager.dart';
import '../../../constants/design_constants/colors_manager.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(StringsManager.settings.tr(),style: Theme.of(context).textTheme.titleLarge)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *0.3,
                  child: Image.asset(ImageAssets.onBoardingImage3)),
              const SizedBox(height: 40,),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.dark_mode , color: ColorsManager.primaryColor,),
                  ),
                  Text(StringsManager.darkMode.tr(), style: Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(width: 30,),
                  Switch(value:  AppCubit.get(context).isDark, onChanged: (value){
                    AppCubit.get(context).initDarkMode();
                  })
                ],
              ),
              listTileOfSettings(context: context ,text:StringsManager.language.tr(),icon:Icons.language , onTap: (){
                Navigator.pushNamed(context, Routes.languageScreenRoute);
              }),
              listTileOfSettings(context: context ,text:StringsManager.bookMarks.tr(),icon:Icons.bookmarks , onTap: (){
                Navigator.pushNamed(context, Routes.bookmarksScreenRoute);
              }),
              listTileOfSettings(context: context ,text:StringsManager.aboutDeveloper.tr(),icon:Icons.info , onTap: (){
                Navigator.pushNamed(context, Routes.aboutDeveloperScreenRoute);
              }),

            ],
          ),
        ),
      ),
    );
  }

  Widget listTileOfSettings({required IconData icon,required BuildContext context,required String text, GestureTapCallback? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: ColorsManager.primaryColor,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

}
