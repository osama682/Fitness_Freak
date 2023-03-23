import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class trap_bar_deadlift extends StatelessWidget {
  const trap_bar_deadlift({Key? key}) : super(key: key);

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
                "Trap Bar Deadlift",
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
                  'assets/Trap_Bar_Deadlift_Thighs_legs.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Stand in the center of a trap bar with your feet hip-width apart, toes facing forward.\n2. Keeping your back as flat as you can, bend your knees slightly, push your hips back and bend forward from your hips to reach down and grip the handles on either side, palms facing in toward your legs.\n3. Pull your shoulders together to create tension, and keep your neck neutral.\n4. Take a deep breath in as you press through your feet, squeeze your glutes, and bring your hips forward as you stand up with the weight as tall as possible. Keep your gaze a few feet in front of you.\n5. Stand until your knees and hips are locked out.\n6. Lower the weight back down to the floor with control by pushing your hips back, keeping the core engaged and back straight.\n",
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
