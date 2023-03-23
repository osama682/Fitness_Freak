import 'package:fitness_freak/src/Registeration/login_4.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import 'introduction1.dart';
import 'signup_3.dart';
import 'package:get/get.dart';

class New extends StatelessWidget {
  const New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("Fitness Freak"),
      //   backgroundColor: Colors.indigo,
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 150),
                child: Image.asset("assets/sign.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 260,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => const Mysignup(),
                      transition: Transition.zoom,
                      duration: Duration(seconds: 1),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xFF0A0F22),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blueGrey,
                    elevation: 5,
                    backgroundColor: Color(0xFF13C89F),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 260,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => const Mylogin(),
                      transition: Transition.zoom,
                      duration: Duration(seconds: 1),
                    );
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xFF0A0F22),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blueGrey,
                    elevation: 5,
                    backgroundColor: Color(0xFF13C89F),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
