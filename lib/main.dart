import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:hal_aur_ham/screens/Home_Screen.dart';
import './screens/Crop_Scan.dart';
import './screens/Crop_Change_Screen.dart';
import './models/cropItems.dart';
import './screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

//For using hex code in primary swatch
Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CropItems(),
        ),
      ],
      child: MaterialApp(
        title: 'Hal Aur Ham',
        theme: ThemeData(
          primarySwatch: MaterialColor(0xFF679B6D, color),
          fontFamily: 'Comforta',
        ),
        home: HomeScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          CropScan.routeName: (ctx) => CropScan(),
          CropChange.routeName: (ctx) => CropChange(),
          Profile.routeName:(ctx)=>Profile(),
        },
      ),
    );
  }
}
