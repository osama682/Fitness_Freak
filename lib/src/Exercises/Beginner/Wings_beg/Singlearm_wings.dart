import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class single_arm_stretch extends StatelessWidget {
  const single_arm_stretch({Key? key}) : super(key: key);

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
                "One Arm Side Dumbbell",
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
                  'assets/Singlearm_wings.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Set up a flat bench and with a dumbbell, stand to the right side of it.\n2. Place your left knee on the bench under your hip and your left hand under your shoulder. Lean slightly forward.\n3. Pick up your dumbbell with your right hand. Your right leg should be to the side of the bench with your foot flat on the ground.\n4. Keep your back flat and your gaze downward.\n5. With your palm facing the side of your body, slowly pull the weight in an arcing motion toward your back hip until your arm is at a 90-degree angle. During the movement, tighten up your butt and hips, keeping your shoulder blades pulled back the entire time.\n6. Slowly lower the weight to the starting position and repeat for the specified number of repetitions.\n7. Switch sides and repeat on the other arm\n",
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
