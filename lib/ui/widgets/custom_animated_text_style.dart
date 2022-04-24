import 'package:flutter/material.dart';

import '../../constants/design_constants/colors_manager.dart';

class AnimatedTextStyle extends StatefulWidget {

   AnimatedTextStyle({Key? key , required this.text}) : super(key: key);

  String text;

  @override
  State<AnimatedTextStyle> createState() => _AnimatedTextStyleState();
}

class _AnimatedTextStyleState extends State<AnimatedTextStyle> {


  bool isChange = false;

  @override
  void initState() {

    super.initState();
    buildAnimatedText();
  }
  @override
  Widget build(BuildContext context) {
    return  AnimatedDefaultTextStyle(
      style: isChange == true ?
      const TextStyle(color: ColorsManager.primaryColorDark, fontSize: 30):
      const TextStyle(color: ColorsManager.primaryColor , fontSize: 40),
      curve:  Curves.elasticInOut,
      duration: const Duration(seconds: 2),
      onEnd: null,
      child:  Text(widget.text),);
  }

  bool buildAnimatedText(){


setState(() {

  do{
    Future.delayed( const Duration(milliseconds: 300,),()=> !isChange  );
  }while(true);

});



    return isChange ;
  }
}
