import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../constants/data_constants/assets_manager.dart';
import '../../../../constants/routes.dart';
import '../../../../data/local_data/shared_preferences/shared_pref.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen( {Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startDelay();
  }

  startDelay() {
    timer = Timer(const Duration(seconds: 3), nextScreen);
  }

  nextScreen() {

    bool? isSkip =  SharedPref.getBoolData(key: 'isSkip') ;

    if(isSkip == true){
      Navigator.pushReplacementNamed(context, Routes.homeScreenRoute,  );
    }
    else {
      Navigator.pushReplacementNamed(context, Routes.onBoardingRoute,  );
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height:  MediaQuery.of(context).size.width * 0.3,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageAssets.splash), fit: BoxFit.contain
              )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
