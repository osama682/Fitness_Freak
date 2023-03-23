import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class skullcrusher extends StatelessWidget {
  const skullcrusher({Key? key}) : super(key: key);

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
                "Skull-Crusher",
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
                  'assets/skullcrusher_triceps.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "Lie face up on a flat gym bench. Your entire body should be on the bench, except your lower legs. Your knees are bent, and your feet are flat on the floor. Arms extend above the chest, elbows shoulder-width apart (not locked), and both hands hold one end of a dumbbell.\n1. Flex your elbows and lower the weight toward the top of your head. Your upper arms should remain relatively perpendicular to your body. This keeps the tension on the triceps versus shifting it to the shoulders.\n2. Continue lowering the weight behind the head. The bottom of the dumbbell head should be about in line with the bench's top, or even a little higher if this feels unwieldy.\n3.  Reverse the movement until the weight is above the chest in the original starting position. Keep from locking the elbow to maintain tension in your triceps muscle.\n4. Repeat.\n",
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
