import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../ui/screens/settings_view/language_screen.dart';
part 'translation_state.dart';

class TranslationCubit extends Cubit<TranslationState> {
  TranslationCubit() : super(TranslationInitial());


  Languages? language  ;

  var locale = const Locale('en', 'EN');

  changeLanguage(value){
    language = value ;

    if(language == Languages.arabia){
      locale =  const Locale('ar', 'AR');

    }
    if (language == Languages.english){
      locale = const Locale('en', 'EN');
    }
    emit(ChangeLanguageState());
    return language;
  }
}
