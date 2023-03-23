import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class My_calo_calc extends StatefulWidget {
  const My_calo_calc({Key? key}) : super(key: key);

  @override
  State<My_calo_calc> createState() => _My_calo_calcState();
}

class _My_calo_calcState extends State<My_calo_calc> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        var _age = int.parse(_ageTEC.text);
        var _height = int.parse(_heightTEC.text);
        var _weight = int.parse(_weightTEC.text);
        double sum = 66 + (13.7 * _weight) + (5 * _height) - (6.8 * _age);
        result = sum.toString();
        print(sum);
      });
    }
  }

  TextEditingController _ageTEC = new TextEditingController();
  TextEditingController _heightTEC = new TextEditingController();
  TextEditingController _weightTEC = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F22),
      appBar: AppBar(
        title: Text("Calorie Calculator"),
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
        backgroundColor: Color(0xFF13C89F),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Container(
              height: 650,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/calculator.png"),
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.1),
                    BlendMode.modulate,
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 310,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Calories Calculator",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'ACETONE',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF13C89F)),
                      ),
                    ),
                  ),
                  Container(
                    width: 310,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        maxLength: 2,
                        controller: _ageTEC,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF13C89F), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white38, width: 2.0),
                          ),
                          prefixIcon: Icon(
                            Icons.access_time_filled_rounded,
                            color: Colors.white38,
                          ),
                          border: OutlineInputBorder(),
                          // hintText: "Age",
                          labelText: "Your age",
                          labelStyle: TextStyle(
                            color: Colors.white54, //<-- SEE HERE
                          ),
                        ),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Age cannot be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 310,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      maxLength: 3,
                      controller: _heightTEC,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF13C89F), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white38, width: 2.0),
                        ),
                        prefixIcon: Icon(
                          Icons.height,
                          color: Colors.white38,
                        ),
                        border: OutlineInputBorder(),
                        // hintText: "Your height",
                        labelText: "height in cm",
                        labelStyle: TextStyle(
                          color: Colors.white54, //<-- SEE HERE
                        ),
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Height field cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: 310,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      maxLength: 3,
                      controller: _weightTEC,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white38, width: 2.0),
                        ),
                        prefixIcon: Icon(
                          Icons.monitor_weight,
                          color: Colors.white38,
                        ),
                        border: OutlineInputBorder(),
                        // hintText: "your weight",
                        labelText: "weight in kg",
                        labelStyle: TextStyle(
                          color: Colors.white54, //<-- SEE HERE
                        ),
                        // labelStyle: TextStyle(
                        //   color: Colors.white54, //<-- SEE HERE
                        // ),
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Weight field cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 230,
                    padding: EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      onPressed: () => moveToHome(context),
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFF0A0F22),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF13C89F),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "     Required gain calories are ",
                          style: TextStyle(
                              color: Color(0xFF13C89F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          result,
                          style: TextStyle(
                              color: Color(0xFF13C89F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
