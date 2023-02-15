import 'dart:ui';

import 'package:flutter/material.dart ';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phixlab_money/screens/home_profile_tab.dart';
import 'package:phixlab_money/screens/home_screen_tab.dart';
import 'package:phixlab_money/utils/constants.dart';

import 'calculate.dart';
import 'home_wallet_tab.dart';

class MainScreenHost extends StatefulWidget {
  const MainScreenHost({super.key});


  @override
  State<MainScreenHost> createState() => _MainScreenHostState();
}

class _MainScreenHostState extends State<MainScreenHost> {
  var currentIndex = 0;

  Widget buildTabContent(int index){
    switch(index){
      case 0:
        return const HomeScreenTab();
      case 1:
        return  Calculate();
      case 2:
        return const HomeProfileTab();
      case 3: 
        return const HomeProfileTab();
      default:
        return const HomeScreenTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      body: buildTabContent(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      selectedItemColor: secondaryDark,
      unselectedItemColor: fontLight,

      items: [
        BottomNavigationBarItem(icon: Image.asset("assets/icons/home-1.png"),
        label: "หน้าแรก"),
        BottomNavigationBarItem(icon: Image.asset("assets/icons/wallet.png"),
        label: "คำนวณ"),
        BottomNavigationBarItem(icon: Image.asset("assets/icons/lock-on.png"),
        label: "ข้อมูลส่วนตัว"),
      ],
    ),);
  }
}