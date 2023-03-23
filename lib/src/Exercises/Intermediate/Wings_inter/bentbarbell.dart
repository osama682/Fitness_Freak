import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class bentbarbell extends StatelessWidget {
  const bentbarbell({Key? key}) : super(key: key);

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
                "Bent-Barbell",
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
                  'assets/bentbarbell_wings.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Place a barbell on a rack set to hip level. (You can also deadlift it up from the floor—but only if you can maintain a flat back/neutral spine position, for safety). Grasp the bar with your hands just outside shoulder-width, and palms facing down. Pull the bar out of the rack. Step back, and set your feet at hip width; hold the bar at arm‘s length against your thighs.\n2. Draw your shoulder blades back and downward—think: “proud chest.” Take a deep breath into your belly, trying to expand it 360 degrees. Brace your core. Now bend your hips back while keeping your head, spine, and pelvis aligned. Allow your knees to bend naturally as you drive the hips back until your torso is just above parallel to the floor—or as low as you can go without losing the neutral positioning of your lower back. Your arms should hang straight down, but not loose; maintain your proud chest position and actively pull the bar close to you so it’s touching your shins just below the knees. Your neck should be neutral—not extended or rounded forward. Focus your eyes on the floor a few feet in front of you.\n3. Actively contract/squeeze your back muscles as you row the bar up to your abdomen. Breathe out as you do so. The bar should touch your torso somewhere between your belly button and sternum. Hold it there for a second or two, and then lower the bar back down under control, taking another breath in.\n",
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
