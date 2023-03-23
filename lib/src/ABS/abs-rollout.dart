import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class abs_rollout extends StatelessWidget {
  const abs_rollout({Key? key}) : super(key: key);

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
                "Abs rollout",
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
                  'assets/ab-rollouts.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Kneel down on the floor with a stability ball in front of you. You can use a mat to kneel on for extra cushioning. The ball should be within arm's reach.\n2. Put your hands in a loose fist and place them on the ball. Your forearms will also rest on the ball. Make sure your elbows are bent 90 degrees. Keep your body in a straight line with your back flat.\n3. Roll the ball forward with your hands as your arms and body straighten out. This motion needs to be slow and controlled. Keep your gaze looking straight ahead.\n4. Extend out as far as you can go. Your chest will touch the ball. Hold this position for a few seconds.\n5. Slowly reverse the movement by bending your elbows to roll the ball back to the starting position. Keep your core tight, so your hips don’t drop.\n",
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
