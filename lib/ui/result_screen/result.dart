import 'package:bmi_calculator/ui/calculate_screen/myCal.dart';
import 'package:bmi_calculator/style/theme_color.dart';

import 'package:bmi_calculator/ui/home_screen/homeScreen.dart';
import 'package:flutter/material.dart';

class BMIRuselt extends StatelessWidget {
  final int weight;
  final int height;
  final String gender;
  final int age;
  final int Result;
  final String name;

  BMIRuselt(
      {required this.weight,
      required this.height,
      required this.Result,
      required this.gender,
      required this.age,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $name",
              style: TextStyle(
                  color: myStyle.primaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gender : $gender",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "age : $age",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Result : $Result",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: myStyle.primaryColor),
                  child: IconButton(
                      color: myStyle.fontColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
