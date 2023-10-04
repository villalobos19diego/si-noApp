// import 'package:flutter/material.dart';
// import 'package:untitled/email/loginPage.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       debugShowMaterialGrid: false,
//       showSemanticsDebugger: false,
//       home: LoginPage(),
//     );
//   }
//
//     }
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyApp();
  }
}

class _MyApp extends State {
  Widget? _child;

  @override
  void initState() {
  //  _child = HomeContent();
    super.initState();
  }


  @override
  Widget build( BuildContext context) {

    // Build a simple container that switches content based of off the selected navigation item
    return MaterialApp(
      checkerboardOffscreenLayers: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
appBar: AppBar(
title:  Row(
  children: [
    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios),
    
    ),
const Icon(Icons.person_pin,weight: 40,size: 40, )
  ],
),
),



        backgroundColor: Color(0xFFEAC0DC),
        extendBody: true,
        body: _child,
        bottomNavigationBar: FluidNavBar(
          icons: [
            FluidNavBarIcon(
                icon: Icons.home_outlined,
                backgroundColor: Colors.pink,
                extras: {"label": "home"}),
            FluidNavBarIcon(
                icon: Icons.apps_rounded,
                backgroundColor: Colors.pink,
                extras: {"label": "account"}),
            FluidNavBarIcon(
                icon: Icons.shopping_cart_outlined,
                backgroundColor: Colors.pink,
                extras: {"label": "settings"}),
            FluidNavBarIcon(
                icon: Icons.person,
                backgroundColor: Colors.pink,
                extras: {"label": "home"}),
          ],
          onChange: _handleNavigationChange,
          style: const FluidNavBarStyle(
              iconSelectedForegroundColor: Colors.pinkAccent,
              iconUnselectedForegroundColor: Colors.white60),
          scaleFactor: 1.5,
          defaultIndex: 0,
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras!["label"],
            child: item,
          ),
        ),
      ),

    );

  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
        //  _child = HomeContent();
          break;
        case 1:
          //_child = AccountContent();
          break;
        case 2:
        //  _child = SettingsContent();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}


