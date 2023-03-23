import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class close_grip extends StatelessWidget {
  const close_grip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
// backgroundColor: Color(0xFF343458),
        backgroundColor: Color(0xFF10C69B),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Close Grip",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ACETONE',
                  color: Color(0xFF14E5B3),
// color: Color(0xFF14E5B3),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Image.asset(
                  'assets/Closegripbarcurl_biceps.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Place an appropriate weight onto an EZ bar.\n2. Standing up straight with your feet shoulder width apart, keeping your knees slightly bent.\n3. Grab the EZ bar with an underhand narrow grip on the inner-most part of the bar with your elbows slightly in front of your torso. Your palm should face forward and tilted inwards. This is your starting position.\n4. Flex your arms fully against your thighs.\n5. Without bending your elbows, exhale and pull the weight towards your front delt (chest), ensuring that your biceps are squeezed maximally with the bar at shoulder level.\n6. Hold for as long as convenient. Inhale and gently lower the weight returning it to the starting position.\n7. Repeat the steps above to a number of sets of your choice.\n",
                  style: TextStyle(fontSize: 17, color: Colors.white70),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
