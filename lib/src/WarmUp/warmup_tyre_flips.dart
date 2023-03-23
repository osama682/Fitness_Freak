import 'package:flutter/material.dart';

import '../SideBar/side_bar_6.dart';

class Mytyre_flips extends StatelessWidget {
  const Mytyre_flips({Key? key}) : super(key: key);

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
        centerTitle: true,
        backgroundColor: Color(0xFF14E5B3),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Tyre Flips",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ACETONE',
                  color: Color(0xFF14E5B3),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Image.asset(
                  'assets/tyre_flip.gif',
                  // width: 350,
                  // height: 250,
                  // fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "1. Make sure you have plenty of space to be able to safely flip the tire.\n2. Start with the tire laying on the ground on its side.\n3. Stand with toes almost against the tire, feet roughly shoulder-width apart.\n4. Drop the hips and reach under the tire.\n5. Once you have a good grip under the tire flatten your back and brace your core.\n6. Drive the feet through the ground and aggressively begin to extend the hips.\n7. If the tire is heavy, you can slide one knee under the tire to help with leverage once the tire is high enough.\n8. When the tire gets above stomach height, flip your hands around so you can begin to push the tire.\n9. Push the tire forcefully forward – extending with both your arms and legs.\n10. The tire should land on its side. Repeat for the designated amount of distance or reps.",
                style: TextStyle(fontSize: 17, color: Colors.white70),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
