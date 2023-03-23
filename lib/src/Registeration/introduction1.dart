import 'package:flutter/material.dart';
import 'signup_login_2.dart';

// Jo first page ka content hai Heading Paragraph and button wo is page pr hai
// or button press krny pr signup_login_2.dart page pr chala jaye ga.

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("Fitness Freak"),
      //   backgroundColor: Color(0xFF343458),
      // ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              // ROW 1 (Heading)
              Column(
                children: [
                  SizedBox(
                    height: 170,
                  ),
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logo.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: const Text(
                      "  Welcome to\n Fitness Freak",
                      style: TextStyle(
                        fontFamily: 'ACETONE',
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                  ),
                ],
              ),
              // ROW 2 (paragraph)
              Column(
                children: [
                  // Container(
                  //   width: 350,
                  //   // left, top,right,bottom
                  //   padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
                  //   child: const Text(
                  //     "Fitness Freak is an android app which aims to provide the best exercises, diet plans, cardio exercises, MMA training, yoga training and calories calculator.\n In this application you can also make your own exercise schedule where you can add exercises of your choices. \n Feature which differs our application from others is that it also has a website from where you can buy proteins, shirts, trousers, gym accessories, inventory, and food related to gym.",
                  //     style: TextStyle(fontSize: 17, color: Colors.white70),
                  //     textAlign: TextAlign.justify,
                  //   ),
                  // ),
                ],
              ),
              // ROW 3 For Button
              Column(
                children: [
                  Container(
                    height: 95,
                    width: 210,
                    padding: EdgeInsets.only(top: 45),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const New()));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Color(0xFF0A0F22),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0FB891),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
