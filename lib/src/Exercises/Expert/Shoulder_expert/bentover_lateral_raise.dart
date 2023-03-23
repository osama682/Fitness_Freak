import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bentover_lateral_raise extends StatelessWidget {
  const bentover_lateral_raise({Key? key}) : super(key: key);

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
                "Bentover Lateral Raise",
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
                  'assets/Bentover_lateral_raise_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1.  Start by grabbing a pair of dumbbells, and stand with your feet shoulder-width apart and a slight bend in your knees. Your shoulders should be directly over your hips with a neutral head and neck position. Your chin should remain tucked throughout the movement, as if you were holding an egg under your chin.\n2. Evenly distribute your weight and grip the floor with your feet to create a stable position. While maintaining a neutral spine, hinge your hips back. Your shins should be vertical and your upper body should be at a 45-degree angle. You should feel your legs working to support your position.\n3. Keep your arms long with a slight bend in your elbows and your palms facing each other. Rotate your shoulders outward to engage your lats. Your shoulder blades should be in a neutral position. All repetitions should start from this position.\n4. While maintaining your alignment and a slight bend in your elbows, squeeze your posterior deltoids to initiate the upward movement. Lift your arms until your upper arm is even with your back. As you raise the dumbbells, your shoulder blades should retract. Your hands should be lower than your upper arms. Pause at the top of the movement.\n5. Slowly lower your arms until the dumbbells are back in the starting position. As you lower the dumbbells, your shoulder blades should protract. Lower the dumbbells only as far as you can maintain tension on your posterior deltoids. \n",
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
