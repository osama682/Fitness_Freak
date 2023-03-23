import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class parallel_bar_dips extends StatelessWidget {
  const parallel_bar_dips({Key? key}) : super(key: key);

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
                "Parallel Bar Dips",
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
                  'assets/Parallel_Bar_Dip_chest.gif',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Text(
                  "1. To do this you need a parallets or horizontal parallel bars height above your waist.\n2. Then grab the parallel bars and hop up and hang your body on your straight hands.\n3. If your bar has a lower height than expected you can bend your legs from knees for proper hang.\n4. Now inhale and bend your elbows slowly, lower your body slowly in control till your triceps are in parallel to the bar.\n5. Then while exhaling push yourself up to the starting position where your body hanged and arms are straight.\n6. If you are struggling with your dips you can use a resistance band also called assisted dips.\n7. The basic goal for all is to do 10 dips in a single set.\n8. If you are feeling easy you can then start adding weights as your capacity.\n",
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
