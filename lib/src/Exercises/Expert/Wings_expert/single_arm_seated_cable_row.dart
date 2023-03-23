import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class single_arm_seated_cable_row extends StatelessWidget {
  const single_arm_seated_cable_row({Key? key}) : super(key: key);

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
                "Single Arm Seated Cable Row",
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
                  'assets/singlearm_sit_wings.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Sitting on the bench/platform place your feet shoulder width apart with your knees bent and grasp the cable attachment (handle) with one hand.\n2. Brace your core with your feet firmly planted into the platform foothold and pull the handle and weight back.\n3. Pull the weight back, with your hand placed firmly on the handle and pull keeping your elbow tight and tucked close to your body, keeping your back straight avoiding any additional movement.\n4. Squeeze your shoulder blade and contract, holding for 1-2 seconds.\n5. Return the handle forward, until you feel a stretch in your lat, and shoulder keeping your back straight, then repeat.\n",
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
