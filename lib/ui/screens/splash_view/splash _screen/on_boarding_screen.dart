import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../business_logic/onboarding_logic/onboarding_cubit.dart';
import '../../../../constants/data_constants/assets_manager.dart';
import '../../../../constants/design_constants/colors_manager.dart';
import '../../../../data/model/onboarrding_model.dart';
import '../../main_screen.dart';
import '../splash _components/custom_indicator.dart';
import '../splash _components/on_boarding_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final PageController boardController = PageController();

  @override
  Widget build(BuildContext context) {
    List<OnBoardingModel> onBoardingList = [
      OnBoardingModel(
          image: ImageAssets.onBoardingImage1,
          title:' تريد حياة صحية',
       ),
      OnBoardingModel(
          image: ImageAssets.onBoardingImage2,
          title:'تبحث عن وصفات صحية ولذية',
         ),
      OnBoardingModel(
          image: ImageAssets.onBoardingImage3,
          title:'حضر بنفسك وجبتك الصحية اللذيذة',
         ),
      OnBoardingModel(
          image: ImageAssets.onBoardingImage4,
          title:'واستمتع بالمذاق الطيب')

    ];

    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => OnBoardingCubit(),
          child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: PageView.builder(
                        controller: boardController,
                        onPageChanged: (index) {
                          OnBoardingCubit.get(context)
                              .changeIndexOfOnBoardingPageView(
                                  index, onBoardingList);
                        },
                        physics: const BouncingScrollPhysics(),
                        itemCount: onBoardingList.length,
                        itemBuilder: (c, i) =>
                            OnBoardingSlider(onBoardingList, i)),
                  ),
                  CustomIndicator(
                    onBoardingList: onBoardingList,
                    index: OnBoardingCubit.get(context)
                        .indexOfOnBoardingPageView,
                    boardController: boardController,
                    isLast: OnBoardingCubit.get(context).isLastIndex,

                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
