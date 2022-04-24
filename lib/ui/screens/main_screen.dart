import 'package:flutter/material.dart';


import '../../constants/design_constants/colors_manager.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndexScreen = 0;

  List<Widget> screens = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:screens[currentIndexScreen],
      bottomNavigationBar:bottomNavigationBarIcons() ,
    );
  }

  Widget bottomNavigationBarIcons() {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(19.5), topLeft: Radius.circular(19.5)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 1),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndexScreen,
            selectedItemColor: ColorsManager.primaryColor,
            unselectedItemColor: ColorsManager.white,
            onTap: (index) {
              setState(() {
                currentIndexScreen = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon:
                Image.asset('assets/images/icons/201.png', height: 30, width: 30),
                activeIcon: Image.asset('assets/images/active_icons/201.png',
                    height: 40, width: 40),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:
                Image.asset('assets/images/icons/202.png', height: 30, width: 30),
                activeIcon: Image.asset('assets/images/active_icons/202.png',
                    height: 40, width: 40),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:
                Image.asset('assets/images/icons/203.png', height: 30, width: 30),
                activeIcon: Image.asset('assets/images/active_icons/203.png',
                    height: 40, width: 40),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:
                Image.asset('assets/images/icons/204.png', height: 30, width: 30),
                activeIcon: Image.asset('assets/images/active_icons/204.png',
                    height: 40, width: 50),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:
                Image.asset('assets/images/icons/205.png', height: 30, width: 30),
                activeIcon: Image.asset('assets/images/active_icons/205.png',
                    height: 40, width: 50),
                label: '',
              ),
            ],
          ),
        ));
  }

}