import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/biceps_inter_ex.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Chest_inter/Choose_EX_inter.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Legs_inter/inter_leg_exer.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/shoulder_inter_ex.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Triceps_inter/inter_triceps_exer.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Wings_inter/wings_inter_ex.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myint_chooseex extends StatelessWidget {
  const Myint_chooseex({Key? key}) : super(key: key);

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
        title: Text("Exercise for Intermediate"),
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
                      () => const ex_inter(),
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
                      () => const biceps_inter_exer(),
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
                      () => const inter_tri(),
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
                      () => const wings_inter(),
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
                      () => const inter_shoulder(),
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
                      () => const inter_leg(),
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
