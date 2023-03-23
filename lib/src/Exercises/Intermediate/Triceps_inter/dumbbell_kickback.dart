import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class dumbbell_kickback extends StatelessWidget {
  const dumbbell_kickback({Key? key}) : super(key: key);

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
                "Dumbbell Kickback",
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
                  'assets/dumble_kickback_triceps.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Start by holding a dumbbell in each hand. Make sure the weight doesn’t make you compromise on the form.\n2. Now, stand with a hip-width apart stance.\n3. Next, bend your knees and hinge your waist until your back is parallel to the floor. Make sure that your back stays straight.\n4. Then bend your elbows to a 90-degree angle and bring the dumbbell close to your chest. This is the resting position.\n5. Now, contract your triceps and fully extend your arms backward.\n6. Your arms should extend fully backward, hold for a moment before returning to rest position.\n",
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
