import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class decline_bench extends StatelessWidget {
  const decline_bench({Key? key}) : super(key: key);

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
                "Decline Bench Press",
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
                  'assets/decline_bench_press_chest.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "Before starting this exercise, set the bench to 15 to 30 degrees on a decline, then:\n1. Secure your feet at the end of the bench. Lie down with your eyes under the barbell.\n2. Grip the bar with your palms facing forward, arms slightly wider than shoulder-width apart.\n3. Straighten your arms to lift the barbell from the rack. Move it over your shoulders, locking your elbows.\n4. Inhale and slowly lower the barbell until it touches your mid-chest, keeping your elbows 45 degrees from your body. Pause.\n5. Exhale and lift the barbell to starting position, locking your elbows. Pause.\n6. Complete 12 repetitions. Return the barbell to the rack.\n7. Repeat 3 to 5 sets total.\n",
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
