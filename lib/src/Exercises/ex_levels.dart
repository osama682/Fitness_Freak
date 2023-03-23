import 'package:fitness_freak/src/Exercises/Expert/choose_exercise_expert.dart';
import 'package:fitness_freak/src/Exercises/Beginner/choose_exercise_beginner.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/choose_exercise_intermediate.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myex_levels extends StatelessWidget {
  const Myex_levels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      appBar: AppBar(
        backgroundColor: Color(0xFF13C89F),
        centerTitle: true,
        title: Text("Exercises levels"),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ex_back.png"),
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.1),
                BlendMode.modulate,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 53),
                child: Text(
                  "Exercise level",
                  style: TextStyle(
                    fontSize: 43,
                    fontFamily: 'ACETONE',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF13C89F),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 340,
                // padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const Mybeg_chooseex(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/basic.png"),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 310,
                // padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const Myint_chooseex(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/inter.png"),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 310,
                // padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const Myadv_chooseex(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/expert.png"),
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 280,
              //   padding: EdgeInsets.only(
              //     top: 50,
              //   ),
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const Mybeg_getstar()));
              //     },
              //     child: Text(
              //       "Beginner",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 30,
              //         fontFamily: 'ACETONE',
              //       ),
              //     ),
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.indigo,
              //       shape: new RoundedRectangleBorder(
              //         borderRadius: new BorderRadius.circular(30),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   height: 150,
              //   width: 280,
              //   padding: EdgeInsets.only(
              //     top: 50,
              //   ),
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Navigator.push(
              //       //     context,
              //       //     MaterialPageRoute(
              //       //         builder: (context) => const Myint_getstar()));
              //     },
              //     child: Text(
              //       "Intermediate",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 30,
              //         fontFamily: 'ACETONE',
              //       ),
              //     ),
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.indigo,
              //       shape: new RoundedRectangleBorder(
              //         borderRadius: new BorderRadius.circular(30),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   height: 150,
              //   width: 280,
              //   padding: EdgeInsets.only(top: 50),
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Navigator.push(
              //       //     context,
              //       //     MaterialPageRoute(
              //       //         builder: (context) => const Myexp_getstar()));
              //     },
              //     child: Text(
              //       "Expert",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 30,
              //         fontFamily: 'ACETONE',
              //       ),
              //     ),
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.indigo,
              //       shape: new RoundedRectangleBorder(
              //         borderRadius: new BorderRadius.circular(35),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
