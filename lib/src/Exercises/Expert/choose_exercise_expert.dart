import 'package:fitness_freak/src/Exercises/Expert/Biceps_expert/expert_biceps_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/expert_chest_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Legs_expert/expert_leg_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Shoulder_expert/expert_shoulder_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Triceps_expert/expert_triceps_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Wings_expert/wings_expert_exer.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myadv_chooseex extends StatelessWidget {
  const Myadv_chooseex({Key? key}) : super(key: key);

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
        title: Text("Exercise for Experts"),
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
                      () => const expert_chest(),
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
                      () => const expert_biceps_exer(),
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
                      () => const expert_triceps_exer(),
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
                      () => const expert_wings_exer(),
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
                      () => const expert_shoulder_exer(),
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
                      () => const expert_leg_exer(),
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
