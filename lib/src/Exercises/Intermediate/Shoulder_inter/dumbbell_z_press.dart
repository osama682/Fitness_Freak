import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class dumbbell_z_press extends StatelessWidget {
  const dumbbell_z_press({Key? key}) : super(key: key);

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
                "Dumbbell Z Press",
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
                  'assets/dumbbell-z-press_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Between the uprights of a squat rack, sit on the floor with your legs straight and spread wide for balance. Place a barbell on the J-hooks at about shoulder height. Sit up tall, brace your abs, and hold the bar with an overhand, slightly wider than shoulder-width grip.\n2. With your core tight and shoulders down and back, unrack the bar and hold it across your shoulders as you would for regular overhead presses. Do not lean forward or back. Lift your chest.3. Keeping your core tight, press the bar up and overhead.\n4. Lower the bar back to your shoulders and repeat.\n5. Focus on maintaining a good upright posture and tight core throughout. Do not allow your lower back to round, so no slouching!\n",
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
