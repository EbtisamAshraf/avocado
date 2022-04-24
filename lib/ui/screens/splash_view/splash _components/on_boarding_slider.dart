import 'package:flutter/material.dart';

import '../../../../data/model/onboarrding_model.dart';

class OnBoardingSlider extends StatelessWidget {
  OnBoardingSlider(this.listOnBoardingSlider,this.index,{Key? key}) : super(key: key);

  List<OnBoardingModel> listOnBoardingSlider=[];
  int index=0;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height:
            MediaQuery.of(context).size.height *
                0.4,
            child: Image.asset(
              listOnBoardingSlider[index].image,
            )),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0),
          child: Text(listOnBoardingSlider[index].title , style: Theme.of(context).textTheme.headlineSmall),
        ),

      ],
    );
  }
}