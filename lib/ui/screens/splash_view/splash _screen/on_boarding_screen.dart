import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../business_logic/onboarding_logic/onboarding_cubit.dart';
import '../../../../constants/data_constants/collections_manager.dart';
import '../splash _components/custom_indicator.dart';
import '../splash _components/on_boarding_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final PageController boardController = PageController();

  @override
  Widget build(BuildContext context) {
    OnBoardingCubit  onBoardingCubit = OnBoardingCubit();
    return SafeArea(
      child: Scaffold(
        body: BlocProvider.value(
          value:onBoardingCubit,
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
                          onBoardingCubit
                              .changeIndexOfOnBoardingPageView(
                                  index, CollectionsManager.onBoardingList);
                        },
                        physics: const BouncingScrollPhysics(),
                        itemCount: CollectionsManager.onBoardingList.length,
                        itemBuilder: (c, i) => OnBoardingSlider(
                            CollectionsManager.onBoardingList, i)),
                  ),
                  CustomIndicator(
                    onBoardingList: CollectionsManager.onBoardingList,
                    indexOfOnBoarding:
                    onBoardingCubit.indexOfOnBoardingPageView,
                    boardController: boardController,
                    isLast: onBoardingCubit.isLastIndex,
                    onBoardingCubit: onBoardingCubit,
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
