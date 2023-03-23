import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class kneeling_extension extends StatelessWidget {
  const kneeling_extension({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      appBar: AppBar(
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
                "Kneeling Extension",
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
                  'assets/Kneeling_extension_tricpes.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Position a bench sideways in front of a high pulley machine.\n2. Grasp a straight bar attachment above your head. Your hands should be about 6 inches apart, with your palms facing down.\n3. Turn away from the machine and kneel.\n4. Put your head on the back of your upper arms on top of the bench. Your elbows should be bent; hold your forearms pointed toward the pulley. This is the starting position.\n5. Press the bar out using a semicircular motion until your arms are parallel to the floor. Contract your triceps and hold this position for a second. Exhale as you do so.\n6. Return to the starting position, inhaling as you do so.\n7. Repeat for the number of reps in your set.\n",
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
