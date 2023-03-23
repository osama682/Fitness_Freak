import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class seated_bentover extends StatelessWidget {
  const seated_bentover({Key? key}) : super(key: key);

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
                "Seated Bentover",
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
                  'assets/Seated_bentover_kickback_triceps.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Hold a dumbbell in each hand with your palms facing in toward each other, keeping your knees bent slightly.\n2. Engage your core and maintain a straight spine as you hinge forward at the waist, bringing your torso almost parallel to the floor.\n3. Keep your upper arms in close to your body and your head in line with your spine, tucking your chin in slightly.\n4. On an exhale, engage your triceps by straightening your elbows.\n5. Hold your upper arms still, only moving your forearms during this movement.\n6. Pause here, then inhale to return the weights to the starting position.\n7. Do 2 to 3 sets of 10 to 15 reps.\n",
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
