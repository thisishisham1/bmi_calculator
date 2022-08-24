import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class genderRow extends StatefulWidget {
  const genderRow({Key? key}) : super(key: key);

  @override
  State<genderRow> createState() => _genderRowState();
}

class _genderRowState extends State<genderRow> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SizedBox(
        height: size.height / 4,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                ),
                child: InkWell(
                  onTap: () {
                    ///function MALE
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.male,
                          color: Colors.white, size: 120),
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
              width: size.width*0.05,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                ),
                child: InkWell(
                  onTap: () {
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
        ));
  }
}
