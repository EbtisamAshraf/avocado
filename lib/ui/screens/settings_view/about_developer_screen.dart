import 'package:avocado_healthy_food/constants/data_constants/assets_manager.dart';
import 'package:avocado_healthy_food/constants/design_constants/colors_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/data_constants/strings_manager.dart';

class AboutDeveloperScreen extends StatelessWidget {
  const AboutDeveloperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(StringsManager.aboutDeveloper.tr(),style: Theme.of(context).textTheme.titleLarge)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            const CircleAvatar(
              radius: 77,
                backgroundColor: ColorsManager.primaryColor,
                child: CircleAvatar(backgroundImage: AssetImage(ImageAssets.about),radius: 70)),
            const SizedBox(height: 30,),
             Text('Ebtisam Ashraf' , style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 15,),
             Text('Flutter Developer' , style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIconButton(url: 'https://www.facebook.com/ebtisam.ashraf.756/',icon: FontAwesomeIcons.facebook),
                buildIconButton(url: 'https://www.linkedin.com/in/ebtisam-kotb-351381129/',icon: FontAwesomeIcons.linkedin),
                buildIconButton(url: 'https://api.whatsapp.com/send?phone=02001093038641' ,icon: FontAwesomeIcons.whatsapp),
                buildIconButton(url: 'https://t.me/Ebtisam29' ,icon: FontAwesomeIcons.telegram),
                buildIconButton(url: 'mailto:ebtisam25ashraf@gmail.com?subject=News&body=New%20email' ,icon: FontAwesomeIcons.solidEnvelope),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget buildIconButton({required String url, required IconData icon}){
    return  IconButton(onPressed: () {
      launch(url);
    }, icon: FaIcon(icon),);
  }
}
