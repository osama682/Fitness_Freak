import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class seated_shoulder_dumbbell extends StatelessWidget {
  const seated_shoulder_dumbbell({Key? key}) : super(key: key);

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
                "Seated Shoulder\nDumbbell Press",
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
                  'assets/Seated_shoulder_dumbel_press_shoulder.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Start by holding each dumbbell in a hand at your shoulder height using a pronated grip. You want your elbows pointed downward and to the sides. In this ready position, inhale before you press.\n2. Now, while exhaling drive both dumbbells overhead in a slight arc until your elbows are fully extended. You don’t need to look up and shouldn’t look down. A good practice is to keep the head upright and in a neutral position. It is best if there is a mirror in front of you, then you can monitor and correct your form.\n3. Be careful not to clang the dumbbells together. Additionally, do not lock your elbows out (this will keep tension on the deltoids).\n4. Finally, slowly lower the dumbbells to the starting position, and remember to inhale on the way down.\n5. Repeat.\n",
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
