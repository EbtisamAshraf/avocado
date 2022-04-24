import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../business_logic/onboarding_logic/onboarding_cubit.dart';
import '../../../../constants/design_constants/colors_manager.dart';
import '../../../../data/model/onboarrding_model.dart';

class CustomIndicator extends StatelessWidget {
  int indexOfOnBoarding = 0;
  PageController boardController;
  List<OnBoardingModel> onBoardingList;
  bool isLast;
  OnBoardingCubit onBoardingCubit;

  CustomIndicator({
    Key? key,
    required this.indexOfOnBoarding,
    required this.onBoardingList,
    required this.boardController,
    required this.isLast,
    required this.onBoardingCubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: onBoardingCubit,
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: () {
                        onBoardingCubit.changeIsSkip();
                        Navigator.pushReplacementNamed(
                            context, Routes.homeScreenRoute);
                      },
                      child: const Text(
                        'SKIP',
                        textAlign: TextAlign.end,
                        style: TextStyle(color: ColorsManager.primaryColor),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: List.generate(
                      onBoardingList.length,
                          (index) =>
                      index == indexOfOnBoarding
                          ? const ActiveDot()
                          : const InactiveDot()),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (isLast) {
                        onBoardingCubit.changeIsSkip();
                        Navigator.pushReplacementNamed(
                            context, Routes.homeScreenRoute);
                      } else {
                        boardController.nextPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.easeInBack);
                      }
                    },
                    child: const Icon(Icons.arrow_forward_ios),
                    style: ElevatedButton.styleFrom(
                      primary: ColorsManager.primaryColor,
                      shape: const CircleBorder(),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }

}


class ActiveDot extends StatelessWidget {
  const ActiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 25,
        height: 8,
        decoration: BoxDecoration(
          color: ColorsManager.primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  const InactiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: ColorsManager.primaryColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
