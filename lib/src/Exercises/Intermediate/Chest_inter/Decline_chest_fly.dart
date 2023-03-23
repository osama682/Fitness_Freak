import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class decline_chest extends StatelessWidget {
  const decline_chest({Key? key}) : super(key: key);

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
                "Decline Chest Fly",
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
                  'assets/decline_chest_fly_chest.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Lie flat on your back on a flat incline bench. Place your feet firmly on the floor on either side of the bench. Your head and back should remain firmly pressed into the bench throughout the exercise.\n2. Ask a spotter to hand you the 2 dumbbells, or gently pick them up from the floor and hold 1 in each hand.\n3. Lift arms up above the head so they’re extended but not locked out. There should be a slight bend at your elbow, and your palms and dumbbells should be facing each other.\n4. Inhale and slowly lower dumbbells in an arc motion until they’re in line with the chest. Your arms will be extended to the sides but not locked out. Don’t drop your arms lower than your shoulders.\n5. Exhale and slowly press the dumbbells up in the same arc motion.\n6. Perform 10–15 reps. Rest. Do 3 sets total.\n",
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
