import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class barbell_squat extends StatelessWidget {
  const barbell_squat({Key? key}) : super(key: key);

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
                "Barbell Squat",
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
                  'assets/barbell_squat_legs.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Set up a barbell to the appropriate height in the squat rack according to your height. The barbell should be slightly lower than your shoulders. Make sure you have enough space to take a couple of steps backward after unracking the barbell.\n2. While facing the barbell, step underneath the barbell and place your hands on both sides of it. The barbell should rest on the muscles of your upper back.\n3. Unrack the barbell, and step backward until you’re a few inches away from the barbell rack.\n4. Keep your posture tall, with your feet slightly wider than hip-width apart and a slight bend in your knees. Your shoulders should be directly over your hips with a neutral head and neck position. Your chin should remain tucked throughout the movement as if you were holding an egg under your chin.\n5. Evenly distribute your weight on your feet from toe to heel. Grip the floor with your feet to create a stable foot position.\n6. Rotate your shoulders outward to engage your lats and upper back.\n7. Pre-tension your shoulders and hips, and engage your core. Your ribs should be down and your pelvis should be slightly tucked.\n8. While maintaining your alignment, begin the downward movement by bending your hips, knees, and ankles.\n9. Lower until your legs are parallel or slightly below parallel to the floor. Keep your weight evenly distributed on your feet as you lower.\n10. Pause for a second at the bottom position.\n11. To begin the upward movement, push your feet into the ground to initiate standing up. Emphasize pushing through your midfoot and heel while keeping your toes engaged.\n12. As you begin to stand up, keep your chest high, squeeze your glutes, allow your knees to straighten and your hips to travel forward.\n13. As you finish the movement, squeeze your glutes and quadriceps while maintaining a neutral spine.\n14. At the end of each repetition, your shoulders should finish directly over the hips.\n",
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
