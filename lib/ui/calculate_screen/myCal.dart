import 'dart:math';

import 'package:bmi_calculator/ui/home_screen/homeScreen.dart';
import 'package:bmi_calculator/ui/result_screen/result.dart';
import 'package:flutter/material.dart';

import '../../style/theme_color.dart';

class myCal extends StatefulWidget {
  final String name;

  myCal(this.name);

  @override
  State<myCal> createState() => _myCalState();
}

class _myCalState extends State<myCal> {
  int age = 15;
  int weight = 40;
  int height = 165;
  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String gender = isMale == true ? 'male' : 'female';
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
            SizedBox(
                height: size.height / 4,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale == true
                              ? Color(0xe2fa3e60)
                              : Colors.black38,
                        ),
                        child: InkWell(
                          onTap: () {
                            isMale = true;
                            setState(() {});

                            ///function MALE
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.male, color: Colors.white, size: 120),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale == false
                              ? const Color(0xe2fa3e60)
                              : Colors.black38,
                        ),
                        child: InkWell(
                          onTap: () {
                            isMale = false;
                            setState(() {});

                            ///function FEMALE
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.female,
                                  color: Colors.white, size: 120),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),

            ///Gender
            SizedBox(
              height: size.height * 0.025,
              width: size.width * 1,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white10,
              ),
              child: SizedBox(
                height: size.height / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "height",
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "$height",
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "CM",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: myStyle.primaryColor),
                            )
                          ],
                        ),
                        Container(
                          width: size.width * 0.9,
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (value) {
                              height = value.round();
                              print("height = $height");
                              setState(() {});
                            },
                            thumbColor: myStyle.primaryColor,
                            activeColor: const Color(0xe2fa3e60),
                            max: 300,
                            min: 50,
                            label: "height",
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            ///height
            SizedBox(
              height: size.height * 0.025,
              width: size.width * 1,
            ),
            SizedBox(
                height: size.height / 4,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WEIGHT",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white70),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text("$weight",
                                    style: const TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Text(
                                  "KG",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: myStyle.primaryColor),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    weight--;
                                    setState(() {});
                                  },
                                  child: const Text(
                                    "-",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  mini: true,
                                  backgroundColor: Colors.white30,
                                  splashColor: myStyle.primaryColor,
                                  heroTag: "weight-",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    weight++;
                                    setState(() {});
                                  },
                                  child: const Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.white30,
                                  splashColor: myStyle.primaryColor,
                                  heroTag: "weight+",
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "AGE",
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white70),
                            ),
                            Text("$age",
                                style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    age--;
                                    setState(() {});
                                  },
                                  child: const Text(
                                    "-",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  mini: true,
                                  backgroundColor: Colors.white30,
                                  splashColor: myStyle.primaryColor,
                                  heroTag: "age-",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    age++;
                                    setState(() {});
                                  },
                                  child: const Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.white30,
                                  splashColor: myStyle.primaryColor,
                                  heroTag: "age+",
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),

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
            double Result = weight / pow(height / 100, 2);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BMIRuselt(
                          weight: weight,
                          height: height,
                          Result: Result.round(),
                          gender: gender,
                          age: age,
                          name: widget.name,
                        )));
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
