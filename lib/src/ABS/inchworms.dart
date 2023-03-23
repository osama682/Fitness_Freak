import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inchworms extends StatelessWidget {
  const inchworms({Key? key}) : super(key: key);

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
                "Inchworms",
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
                  'assets/inchworms.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Stand tall, your feet roughly hip-distance apart. Check your posture—your ears should be aligned over your shoulders, hips, knees, and ankles, your abdominals engaged.\n2. Take a breath in, then as you exhale, look down at the ground and start reaching your hands toward the floor in front of your feet, allowing your back to bend forward, rolling down one vertebra at a time. Allow your knees to bend slightly, as needed, to enable your hands to reach the ground.\n3. Place your hands on the floor in front of your feet. Inhale and walk your hands forward, one at a time, allowing your heels to lift off the floor as your body begins to straighten. When your hands are directly under your shoulders, check your form—you should be in a full plank position with your core, chest, quads, triceps, and shoulders engaged, your body forming a straight line from heels to head.\n4. Keep your legs relatively straight and begin walking your feet forward, one at a time, toward your hands. This should provide a nice stretch through your hamstrings, calves, and glutes as your hips start lifting toward the ceiling. Exhale as you step forward.\n5. Stop when your feet are as close to your hands as you can comfortably bring them. Remember, you can bend your knees slightly to ease the stretch on your hamstrings, but try to keep them as straight as possible.\n6. Return to standing by slowly rolling your back up from the hips, straightening one vertebra at a time. Inhale as you go. When you're back in the starting position, you've completed one repetition. Continue for time or repetitions, depending on your workout.\n",
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
