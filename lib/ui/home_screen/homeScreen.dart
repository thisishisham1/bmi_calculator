import 'package:bmi_calculator/style/theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  String name = '';
  bool checkname = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.3,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.15),
                child: SizedBox(
                  width: size.height * 1,
                  height: size.height * 0.1,
                  child: TextFormField(
                    validator: (text) {
                      if (text!.isEmpty) {
                        checkname = false;
                      } else {
                        checkname = true;
                      }
                      ;
                    },
                    autovalidateMode: AutovalidateMode.always,
                    decoration: InputDecoration(
                      hintText: "your name",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x6441436a))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x6441436a))),
                      filled: true,
                      fillColor: Colors.black38,
                      suffixIcon: Container(
                          color: checkname == true
                              ? myStyle.primaryColor
                              : Colors.transparent,
                          child: IconButton(
                              onPressed: () {
                                onpreesed();
                              },
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 20,
                              ))),
                    ),
                    onChanged: (text) {
                      name = text;
                      print(name);
                    },
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              checkname == true
                  ? Container(
                      height: 300,
                      width: 300,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Welcome ",
                            style: TextStyle(
                                color: myStyle.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 40),
                          ),
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }

  void onpreesed() {
    if (checkname == true) {
      Navigator.pushNamed(context, "calScreen");
    }
  }
}
