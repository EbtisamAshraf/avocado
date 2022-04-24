import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/local_data/ shared_preferences/shared_pref.dart';
import '../../data/model/onboarrding_model.dart';
part 'onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());



 static OnBoardingCubit get(context)=> BlocProvider.of(context);

 bool isLastIndex = false;
 bool isSkip = false;

 int indexOfOnBoardingPageView = 0;


 changeIndexOfOnBoardingPageView(index ,List<OnBoardingModel> list){
   indexOfOnBoardingPageView = index;

   if (indexOfOnBoardingPageView == list.length - 1){
     isLastIndex = true;
   }else{
     isLastIndex = false;
   }
   emit(ChangeIndexOfOnBoardingPageViewState());
 }

 changeIsSkip(){
   isSkip = true;
   SharedPref.saveData(key: 'isSkip', value: isSkip);
   emit(ChangeIsSkipState());
   return isSkip;

 }


}
