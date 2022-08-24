import 'package:bmi_calculator/style/theme_color.dart';
import 'package:bmi_calculator/ui/home_screen/homeScreen.dart';
import 'package:flutter/material.dart';

import 'layout/cal_structure.dart';
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(

     debugShowCheckedModeBanner: false,
     theme: myStyle.darkMood,
     routes: {
       "welcome":(context) => welcome(),
       "calScreen":(context) => myCal(),
     },
     initialRoute: "welcome",
   );
  }

}