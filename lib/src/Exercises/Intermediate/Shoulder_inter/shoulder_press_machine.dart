import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class shoulder_press_machine extends StatelessWidget {
  const shoulder_press_machine({Key? key}) : super(key: key);

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
                "Shoulder Press Machine",
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
                  'assets/Machine_shoulder_press.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. First, hop onto the seat and make sure it’s adjusted to your height. The bars should be at shoulder height. You should be seated comfortably, with your back against the pad, your feet flat on the floor, and your knees bent at a right angle around shoulder width apart.\n2. Hold the bars that are sticking out in-front of you with a strong pronated (overhand) grip. Your elbows will be bent.\n3. Push the weight upwards and over your head. The pattern of movement will be fixed by the machine. Pause at the top, but don’t lock out the elbows.\n4. Lower back down in a slow and controlled motion, and keep the tension of the weight at the bottom ahead of the next rep. Don’t let the weight drop back down onto its resting place.\n",
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
