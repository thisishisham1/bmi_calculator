import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../style/theme_color.dart';
class weight_ageRow extends StatefulWidget {
  const weight_ageRow({Key? key}) : super(key: key);

  @override
  State<weight_ageRow> createState() => _weight_ageRowState();
}

class _weight_ageRowState extends State<weight_ageRow> {
  @override
  int age=15;
  int weight=40;
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SizedBox(
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
                  children:  [
                    Text("WEIGHT",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white70
                      ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("$weight",style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        )),
                        Text("KG",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: myStyle.primaryColor
                        ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: (){
                            weight--;
                            setState((){});
                          },
                          child: Text("-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35
                            ),
                          ),
                          mini: true,
                          backgroundColor: Colors.white30,
                          splashColor: myStyle.primaryColor,
                        ),
                        SizedBox(width: 10,),
                        FloatingActionButton(
                          onPressed: (){
                            weight++;
                            setState((){});
                          },
                          child: Icon(Icons.add),
                          mini: true,
                          backgroundColor: Colors.white30,
                          splashColor: myStyle.primaryColor,
                        ),
                      ],
                    )
                  ],
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
                  color: Colors.white10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text("AGE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white70
                      ),),
                    Text("$age",style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: (){
                            age--;
                            setState((){});
                          },
                          child: Text("-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35
                            ),
                          ),
                          mini: true,
                          backgroundColor: Colors.white30,
                          splashColor: myStyle.primaryColor,
                        ),
                        SizedBox(width: 10,),
                        FloatingActionButton(
                          onPressed: (){
                            age++;
                            setState((){});
                          },
                          child: Icon(Icons.add),
                          mini: true,
                          backgroundColor: Colors.white30,
                          splashColor: myStyle.primaryColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
