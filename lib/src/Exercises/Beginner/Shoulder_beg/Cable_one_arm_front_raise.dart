import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class cable_one_arm_front extends StatelessWidget {
  const cable_one_arm_front({Key? key}) : super(key: key);

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
                "Cable One Arm\n  Front Raise",
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
                  'assets/Cable_one_arm_front_raise_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. The cable front raise is a great exercise for isolating the front delts. Set up for the exercise by attaching a single grip handle to a low pulley cable machine and selecting the weight you want to use.\n2. Stand facing away from the machine and grip the handle with your left hand using an overhand grip (palm facing down).\n3. Stand up straight with your eyes forward, holding the handle just off your thighs pulling weight off the stack. This is the starting position.\n4. To execute, slowly raise the handle up to around shoulder height while keeping your arm straight and your body fixed.\n5. Pause, and then slowly lower the weight to the starting position.\n6. Do not allow the stack to drop or the handle to touch your body.\n7. Repeat for desired reps and then repeat using your right arm.\n",
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
