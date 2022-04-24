

import 'package:flutter/material.dart';

class ButtonStylesManager {

  static ButtonStyle buttonAuthStyle(){

    return  ButtonStyle(
        padding:MaterialStateProperty.all( const EdgeInsets.symmetric(vertical: 18, )),
        backgroundColor: MaterialStateProperty.all(Colors.orange) ,
        side: MaterialStateProperty.all(const BorderSide(color: Colors.teal ,)),
        shape: MaterialStateProperty.all(const CircleBorder())

    );
  }

}