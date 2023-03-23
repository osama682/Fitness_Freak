import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class pullups extends StatelessWidget {
  const pullups({Key? key}) : super(key: key);

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
                "Pull-Ups",
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
                  'assets/pull_ups_wings.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Start by standing directly below a pull-up bar. Place your hands in an overhand grip (palms facing away from your body) with your hands slightly further than shoulder-width apart. If you can’t reach the bar from standing on the floor, you can place a box beneath you and stand on that. Once your hands are holding onto the bar, you’re in your starting position.\n2. Inhale, then exhale. Lift your feet up from the floor or box so that you’re hanging from the bar, and engage your core by pulling your belly button in toward your spine. Pull your shoulders back and down.\n3. Engaging the muscles in your arms and back, bend your elbows and raise your upper body up toward the bar until your chin is over the bar. You can imagine bringing your elbows toward your hips if that makes the movement easier. As you move, avoid swinging your legs around or shrugging your shoulders up. You want to make sure your shoulder blades remain back and down throughout the exercise.\n4. At the top of the movement, inhale. Then extend your elbows and lower your body back down to the starting position. \n",
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
