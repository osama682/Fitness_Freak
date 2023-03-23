import 'package:fitness_freak/src/Exercises/Beginner/Biceps_beg/Biceps_beg_exercises.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/Chest_beg_exercises.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Leg_beg/leg_beg_exer.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/beg_shoulder_ex.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Triceps_beg/Tri_beg_exercises.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Wings_beg/Wings_beg_exercises.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mybeg_chooseex extends StatelessWidget {
  const Mybeg_chooseex({Key? key}) : super(key: key);

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
        title: Text("Exercise for beginner"),
        centerTitle: true,
        backgroundColor: Color(0xFF13C89F),
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 98,
                width: 320,
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const Mychest_beg(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/chestpic.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 320,
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const Beg_bi_exer(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/bicepspic.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 320,
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const tri_beg(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/tricepspic.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 320,
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const wings_beg(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/wingspic.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 320,
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const beg_shoulder(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/shoulderpic.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 320,
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const leg_beg(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/legspic.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
