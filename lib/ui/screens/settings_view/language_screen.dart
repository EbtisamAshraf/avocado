
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/translation_logic/translation_cubit.dart';
import '../../../constants/data_constants/strings_manager.dart';
import '../../../constants/design_constants/colors_manager.dart';


enum Languages { english ,arabia}


class LanguageScreen extends StatelessWidget {
   const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
    create:  (context) => TranslationCubit(),
     child: Scaffold(
      appBar: AppBar(
          title: Text(StringsManager.language.tr(),style: Theme.of(context).textTheme.titleLarge)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<TranslationCubit , TranslationState>(
      builder: (context, state) {
        final TranslationCubit translationCubit = BlocProvider.of<TranslationCubit>(context);
        return Column(
          children: [
            RadioListTile(
                title:  Text('العربية' ,  style: Theme.of(context).textTheme.titleSmall),
                value: Languages.arabia ,
                 activeColor: ColorsManager.primaryColor,
                groupValue:translationCubit.language,
                onChanged: (Languages? value){
                   translationCubit.changeLanguage(value);

                }),
            RadioListTile(
                title:  Text('English' , style: Theme.of(context).textTheme.titleSmall),
                value: Languages.english ,
               activeColor: ColorsManager.primaryColor,
                groupValue: translationCubit.language,
                onChanged: (Languages? value){
                   translationCubit.changeLanguage(value);

                }),
            const Spacer(),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 30),
                width: MediaQuery.of(context).size.width *0.6,
                child: ElevatedButton(child:  Text(StringsManager.changeLanguage.tr()),onPressed: (){
                  context.setLocale(translationCubit.locale);
                })),
          ],
        );
  },
),
      ),
    ),
);
  }
}
