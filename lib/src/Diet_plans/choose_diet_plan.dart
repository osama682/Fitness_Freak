import 'package:fitness_freak/src/Diet_plans/bulk_inside.dart';
import 'package:fitness_freak/src/Diet_plans/shred_inside.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class choose_diet_plans extends StatelessWidget {
  const choose_diet_plans({Key? key}) : super(key: key);

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
        title: Text("Choose diet plan"),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(""),
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2),
                BlendMode.modulate,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                height: 200,
                width: 310,
                // padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const bulk_inside(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/bulk.png"),
                ),
              ),
              Container(
                // height: 200,
                width: 310,
                // padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => const shred_inside(),
                      transition: Transition.rightToLeftWithFade,
                      // duration: Duration(seconds: 1),
                    );
                  },
                  // width: 340,
                  // padding: EdgeInsets.only(left: 20, top: 40),
                  child: Image.asset("assets/shred.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
