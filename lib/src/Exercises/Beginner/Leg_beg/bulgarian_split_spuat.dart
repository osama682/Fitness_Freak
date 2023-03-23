import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class bulgarian_split extends StatelessWidget {
  const bulgarian_split({Key? key}) : super(key: key);

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
                "Bulgarian Split Squat",
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
                  'assets/bulgarian_split_spuat_legs.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Stand roughly two feet in front of a sturdy bench or chair, your feet hip-distance apart, your core engaged, your shoulders back, and your chest and eyes pointing straight ahead.\n2. Pick up your right foot and place it on the bench behind you. You can do this in one of two ways. One option is to place the top of your foot on the bench so that your ankle joint is roughly aligned with the edge of the bench. The other option is to flex your ankle and find your balance with the ball of your foot and your toes, more like during a traditional lunge exercise.\n3. Ensure your feet are still roughly hip distance apart, if not slightly wider. You don't want your elevated foot directly behind your front, making balancing much more difficult.\n4. Remember, your back foot is just there to help you stay balanced—the engagement and movement of the exercise are focused on the front leg.\n5. Engage your core with your chest high and eyes looking straight ahead, and bend your left knee, allowing your right knee and ankle to naturally bend as you move through the downward phase of the exercise without taking on the load with your back leg.\n6. Keep the load balanced evenly across your left foot as you lower. Hinge slightly forward at the hips, ensuring your left knee remains aligned with your left toes (that it doesn't cave inward or bow outward). You may find that your left knee starts to protrude slightly over your left toes toward the bottom of the exercise. This isn't necessarily bad or wrong and only depends on your level of comfort and the flexibility you have at your ankles.\n7. Inhale through this downward phase, lowering down until your left quadriceps is roughly parallel to the ground.\n8. Press back to standing by pushing through your left foot and using your left quad and glute to power the upward phase of the exercise. Exhale as you press to standing.\n9. Step your right foot off the bench or chair after completing a full set to one side. Ensure you keep things even by performing the same repetitions and sets to each side.\n",
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
