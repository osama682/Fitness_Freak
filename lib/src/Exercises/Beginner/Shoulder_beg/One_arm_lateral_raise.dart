import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class one_arm_lateral extends StatelessWidget {
  const one_arm_lateral({Key? key}) : super(key: key);

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
                "One Arm Lateral Raise",
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
                  'assets/One_arm_lateral_raise_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Your starting position will be standing with dumbbells (or another piece of equipment) in your closed fists. Your thumbs should be around the handles with your palms facing your body. Set the dumbbells alongside your thighs with your elbows barely bent. Your feet should be set about hip-width apart or in a split-stance position.\n2. Tighten your core to brace yourself, pull your shoulders down and back, and maintain this position during the entire exercise. Your head should be aligned straight with your spine.\n3. Breathe out as you slowly bring your dumbbells up and out to the side. Your elbows and the upper part of your arm should lift together and stick out slightly in front of your lower arm and the dumbbells.\n4. Once your arms reach shoulder level, rotate them upwards a bit so that the front edge of the dumbbells are now pointed slightly up. Keep lifting the weights up until your shoulders and arms are level with each other and parallel with the ground. Make sure that your core is still braced so that your lower back doesn’t arch and that your wrist position is comfortable so you don’t overextend or injure your wrists.\n5. Breathe in and slowly lower the dumbbells down to your starting position. Your elbows should still be extended a little bit, and your feet, core, shoulder, and wrist positions shouldn’t change as you release the weights down and rotate them back to where you started.\n",
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
