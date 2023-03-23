import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class incline_dumbbell_press extends StatelessWidget {
  const incline_dumbbell_press({Key? key}) : super(key: key);

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
                "Incline Dumbbell Press",
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
                  'assets/Vordere_Schulter_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Sit on the bench and lean back. Hold a dumbbell in each hand, with hands positioned at your shoulders, elbows bent and angled down below your ribs. Relax your neck against the bench. Keep your feet flat on the floor.\n2. Brace your core and press both dumbbells straight over your chest as you exhale. Keep your wrists straight (don't let them cock backward). At the top of the movement, the dumbbells should almost touch each other, and your arms should be perpendicular to the floor.\n3. Reverse the movement and slowly lower the dumbbells to the top of your chest as you inhale. As you lower the dumbbells, your elbows should come down at roughly a 45-degree angle to your torso. They shouldn't splay out to the sides, pointing toward the side of the room. Instead, keep your elbows pointing to the floor.\n4. Aim to complete sets of 8 to 12 reps. Start with one set and work up to two to three sets over time as you build strength. When you finish your set, safely exit the exercise by sitting up and placing the dumbbells on your knees before you stand up. Avoid dropping the dumbbells while you're lying on the incline bench.\n",
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
