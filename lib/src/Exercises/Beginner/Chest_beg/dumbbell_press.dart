import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mydumbbell_press extends StatelessWidget {
  const Mydumbbell_press({Key? key}) : super(key: key);

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
                "Chest Dumbbell Press",
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
                  'assets/dumbll_press_chest.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. Lie on a bench or floor with a dumbbell in each hand. If you use a bench, you may have your feet up on the bench or on the floor, whichever is comfortable for bench height and your body and leg length.\n2. Position the dumbbells at the shoulders with upper arms at about 45 degrees to the body. Keep elbows forward of the shoulder line to avoid stress on the shoulder joint. The palms should face forward and your thumbs should be wrapped around the handle.\n3. Brace the abdominal muscles, tilt the chin slightly toward the chest and ensure you are in a stable and comfortable position. You're ready to lift.\n4. Push the weights upward while exhaling, taking care not to lock out the elbows in an explosive movement. The weights should follow a shallow arc and almost meet over the top of the chest. It's OK to straighten the arms as long as you don’t do it with sudden or explosive force. The head and shoulder blades should not rise off the bench or floor.\n5. Lower the weights, muscles contracted, while inhaling and controlling the return to the starting position.\n",
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
