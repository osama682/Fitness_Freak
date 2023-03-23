import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class barbell_lateral_lunge extends StatelessWidget {
  const barbell_lateral_lunge({Key? key}) : super(key: key);

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
                "Barbell Lateral Lunge",
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
                  'assets/Barbell-Lateral-Lunge_Hips.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Start in a standing position with feet hip width apart either holding a dumbbell in a goblet position in front of your chest or bodyweight with hands in front of your chest.\n2. Step out to the right about double the width of your squat stance (give or take a few inches in either direction based on your anatomy), while keeping your toes pointed straight forward and your left leg straight.\n3. As you bend your right knee and sink into the side lunge, absorb the force in your right leg while you keep your hips back and your spine upright until you are essentially in a single-leg squat.\n4. Push the ground away with your right foot as you come back to the starting position and repeat for the indicated amount of reps. Switch sides, stepping out with your left foot.\n",
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
