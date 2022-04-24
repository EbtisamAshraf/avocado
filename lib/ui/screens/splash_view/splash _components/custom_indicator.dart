

import 'package:avocado_healthy_food/constants/routes.dart';
import 'package:flutter/material.dart';

import '../../../../constants/design_constants/colors_manager.dart';
import '../../../../constants/design_constants/sizes_manager.dart';
import '../../../../data/model/onboarrding_model.dart';
import '../../main_screen.dart';




class CustomIndicator extends StatefulWidget {


  int index=0;
  PageController boardController;
  List<OnBoardingModel> onBoardingList;
  bool isLast ;


   CustomIndicator({Key? key, required this.index, required this.onBoardingList, required this.boardController , required this.isLast ,}) : super(key: key);

  @override
  State<CustomIndicator> createState() => _CustomIndicatorState();
}

class _CustomIndicatorState extends State<CustomIndicator> {


  @override
  Widget build(BuildContext context) {
    return   Padding(
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
                  // OnBoardingCubit.get(context).changeIsSkip();
                  Navigator.pushReplacementNamed(context, Routes.homeScreenRoute);
                },
                child: const Text(
                  'SKIP',
                  textAlign: TextAlign.end,style: TextStyle(color: ColorsManager.primaryColor),
                ),
              ),
            ),
          ),
          Row(children: List.generate(
              widget.onBoardingList.length,
                  (index) => widget.index == index ? const ActiveDot() : const InactiveDot()),
          ),
          ElevatedButton(
            onPressed: (){
            if (widget.isLast){

              Navigator.pushReplacementNamed(context, Routes.homeScreenRoute);
            }
            else {

            widget.boardController.nextPage(duration: const Duration(milliseconds: 750), curve: Curves.easeInBack);
            }

          }, child: const Icon(Icons.arrow_forward_ios),
            style: ElevatedButton.styleFrom(
               primary: ColorsManager.primaryColor,
                shape:CircleBorder(),
            )
          ),

        ],),
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
          color:  ColorsManager.primaryColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
