import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class Mywarmup_wholebody extends StatelessWidget {
  const Mywarmup_wholebody({Key? key}) : super(key: key);

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
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "WholeBody Warmup",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ACETONE',
                  color: Color(0xFF14E5B3),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                child: Image.asset(
                  'assets/Wholebody-warmup.gif',
                  // width: 350,
                  // height: 250,
                  // fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
