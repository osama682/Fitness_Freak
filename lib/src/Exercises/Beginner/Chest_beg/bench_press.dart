import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class Mybench_press extends StatelessWidget {
  const Mybench_press({Key? key}) : super(key: key);

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
                "Bench Press Chest",
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
                  'assets/bench_press_chest.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Draw your shoulder blades back behind you to keep from pressing with rounded shoulders.\n2.Grasp the barbell using an overhand grip, placing your thumbs on the outside of your closed fist. Your arms are slightly wider than shoulder-width apart and the angle of your upper arms is about 45 degrees to the body.\n3. Remove the barbell from the rack, locking your elbows. (Don't move the bar in an arc from the rack directly to the chest position.)\n4. Inhale while lowering the bar to your chest, at the nipple line.\n5. Exhale as you press the bar above your chest, extending your arms. Don't watch the bar—focus on the ceiling.\n6. Lower the bar so it is just above your chest. This is the starting position for the next bench press.\nOnce you've finished your desired reps, place the bar on the rack with elbows in a locked-out position. Move the bar backward gradually until you feel the rack uprights, then lower the bar to the barbell rest.\nDon't try to hit the rack rests directly. If you miss, you can lose control, which can be dangerous.",
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
