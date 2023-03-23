import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class closegrip_benchpress extends StatelessWidget {
  const closegrip_benchpress({Key? key}) : super(key: key);

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
                "Close-Grip Benchpress",
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
                  'assets/close_grip_benchpress_tricpes.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Position the barbell at the correct reach level on the rack (you should be able to grip/lift the bar off the rack with assistance).\n2. Load weight resistance according to your fitness level onto the barbell.\n3. Lie flat on the bench and grip the bar with your hands shoulder-width apart.\n4. Lift the bar with assistance from the rack, arms locked, and hold the bar straight over you.\n5. Inhale and slowly bring the bar down toward your chest, keeping your elbows close to your body for the entire exercise.\n6. Exhale and push the bar up using the triceps and locking arms at the top of the movement.\n7. Repeat the exercise for the recommended number of repetitions.\n8. Return the bar to the rack upon exercise completion.\n",
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
