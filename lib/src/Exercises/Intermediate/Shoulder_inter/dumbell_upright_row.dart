import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class dumbbell_upright_row extends StatelessWidget {
  const dumbbell_upright_row({Key? key}) : super(key: key);

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
                "Dumbbell Upright Row",
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
                  'assets/Dumbell_upright_row_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Grab a pair of dumbbells, and stand with your feet shoulder- to hip-width apart with a slight bend in your knees. Your posture should be tall with your shoulders over your hips. Maintain a neutral head and neck position. Your chin should remain tucked throughout the movement, as if you were holding an egg under your chin. Your weight should be evenly distributed along each entire foot. Grip the floor with your feet to create a stable foot position.\n2. Hold the dumbbells in front of your body with your palms facing your legs. Your arms should be long with a slight bend in your elbows.Pre-tension your shoulders and hips while engaging your core. All repetitions should begin from this position.\n3. While keeping the dumbbells close to your body, initiate the upward movement by slowly pulling the dumbbells up toward your lower chest. Allow your shoulder blades to move naturally with your shoulder joints.\n4. Pause for a second at the top of the movement.\n5. Slowly straighten your arms to return the dumbbells to the starting position.\n6. Pause for a second at the bottom before beginning your next repetition.\n",
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
