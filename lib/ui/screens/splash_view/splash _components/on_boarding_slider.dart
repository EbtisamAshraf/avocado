import 'package:flutter/material.dart';
import '../../../../data/model/onboarrding_model.dart';

class OnBoardingSlider extends StatelessWidget {
  const OnBoardingSlider(this.listOnBoardingSlider, this.index, {Key? key})
      : super(key: key);

  final List<OnBoardingModel> listOnBoardingSlider ;
 final  int index ;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              listOnBoardingSlider[index].image,
            )),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(listOnBoardingSlider[index].title,
              style: Theme.of(context).textTheme.headlineSmall),
        ),
      ],
    );
  }
}
