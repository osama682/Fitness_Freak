import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class barbell_shoulder_press extends StatelessWidget {
  const barbell_shoulder_press({Key? key}) : super(key: key);

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
                "Barbell Shoulder Press",
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
                  'assets/Barbell_Shoulder_Press_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "Stand with your feet shoulder-width apart and your hips and knees fully extended, but don't lock the knees. Hold the barbell in a front-rack position (resting on the front of your shoulders) with your elbows pointing forward and hands shoulder-width apart. This is your starting position.\n1. Tighten your core, squeeze your shoulder blades together, and press the barbell overhead as you exhale.\n2. Continue to press until your arms are locked out. This movement should feel like you are pressing your head through the “window” made by your arms.\n3. Engage your back muscles and, with control, return the barbell to the front-rack position while inhaling.\n4. Repeat these steps to do more reps or place the bar back on the power rack to end this exercise.\n",
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
