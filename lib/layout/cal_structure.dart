import 'package:flutter/material.dart';

import '../style/theme_color.dart';
import '../ui/calculate_screen/gender/gender_row.dart';
import '../ui/calculate_screen/height/height_row.dart';
import '../ui/calculate_screen/weight_age/weight_age_row.dart';

class myCal extends StatefulWidget {
  @override
  State<myCal> createState() => _myCalState();
}

class _myCalState extends State<myCal> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.height * 0.01),
        height: size.height * 0.8,
        width: size.width * 1,
        child: Column(
          children: [
            genderRow(),

            ///Gender
            SizedBox(
              height: size.height * 0.025,
              width: size.width * 1,
            ),
            heightRow(),

            ///height
            SizedBox(
              height: size.height * 0.025,
              width: size.width * 1,
            ),
            weight_ageRow(),

            ///height AND AGE
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.08,
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        decoration: BoxDecoration(
            color: myStyle.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          onTap: () {
            ///calculate
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "CALCULATE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              )
            ],
          ),
        ),
      ),

      ///calculate button
    );
  }
}
