import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';
import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:flutter/material.dart';
import '../../../business_logic/app_logic/app_cubit.dart';
import '../../../constants/design_constants/colors_manager.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('الإعدادات',style: Theme.of(context).textTheme.titleLarge)),
      body: Padding(
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
                Text('الوضع المظلم', style: Theme.of(context).textTheme.titleLarge,),
                const SizedBox(width: 30,),
                Switch(value:  AppCubit.get(context).isDark, onChanged: (value){
                  AppCubit.get(context).initDarkMode();
                })
              ],
            ),
            listTileOfSettings(context: context ,text:'اللغة',icon:Icons.language , onTap: (){
              Navigator.pushNamed(context, Routes.languageScreenRoute);
            }),
            listTileOfSettings(context: context ,text:'المختارات',icon:Icons.bookmarks , onTap: (){
              Navigator.pushNamed(context, Routes.bookmarksScreenRoute);
            }),
            listTileOfSettings(context: context ,text:'عن المطور',icon:Icons.info , onTap: (){
              Navigator.pushNamed(context, Routes.aboutDeveloperScreenRoute);
            }),

          ],
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
