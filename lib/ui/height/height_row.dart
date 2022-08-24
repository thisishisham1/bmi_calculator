import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../style/theme_color.dart';

class heightRow extends StatefulWidget {
  const heightRow({Key? key}) : super(key: key);

  @override
  State<heightRow> createState() => _heightRowState();
}

class _heightRowState extends State<heightRow> {
  int height=165;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      child: SizedBox(
        height: size.height/4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("height",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70
                  ),),
                SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text("$height",style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Text("CM",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: myStyle.primaryColor
                    ),)
                  ],
                ),
                Container(
                  width: size.width*0.9,
                  child: Slider(value: height.toDouble(), onChanged: (value){
                    height=value.round();
                    print("height = $height");
                    setState((){});
                  },
                    thumbColor: myStyle.primaryColor,
                    activeColor: Colors.white54,
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
    );
  }
}
