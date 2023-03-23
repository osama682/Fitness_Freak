import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class single_arm_arnoldpress extends StatelessWidget {
  const single_arm_arnoldpress({Key? key}) : super(key: key);

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
                "One Arm Arnold Press",
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
                  'assets/single-arm-arnold-press_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Set up for the exercise by grabbing a dumbbell and standing straight up with your feet around shoulder width apart.\n2. Raise the dumbbells with your left hand to shoulder height, and twist so that the palm of your hand is facing your body.\n3. The dumbbell should now be positioned in front of your left shoulder.. Your back should be straight and there should be a slight bend in your knees. This is the starting position for the exercise.\n4. Keeping your eyes facing forwards, slowly raise the dumbbell above your head while turning your wrist so that your palm is now facing forward (away from your body).\n5. Keep raising the weight until your arm is almost fully extended.\n6. Do not pause at the top of the movement, and begin lowering the dumbbell back down to the starting position - twisting at the wrist until your palm is facing your body once again.\n7. Repeat this movement for the desired amount of reps, and then repeat with your right arm.\n",
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
