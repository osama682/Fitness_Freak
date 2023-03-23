import 'package:fitness_freak/Admin/Admin_view.dart';
import 'package:fitness_freak/Main_page_5.dart';
import 'package:fitness_freak/session_manager.dart';
import 'package:fitness_freak/src/Registeration/login_4.dart';
import 'package:fitness_freak/src/SideBar/Contact_Us.dart';
import 'package:fitness_freak/src/WarmUp/warm_list.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:email_validator/email_validator.dart';

class Mysignup extends StatefulWidget {
  const Mysignup({Key? key}) : super(key: key);

  @override
  State<Mysignup> createState() => _MysignupState();
}

class _MysignupState extends State<Mysignup> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobnumController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  // Firebase Start code

  FirebaseAuth _auth = FirebaseAuth.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref().child('User');
  // Ends here firebase code

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      SignUp();
    }
  }

  void SignUp() async {
    if (emailController.text.toString() == "adminou@gmail.com" &&
        passwordController.text.toString() == "Foradmin87") {
      setState(() {
        loading = true;
      });
      _auth
          .createUserWithEmailAndPassword(
              email: emailController.text.toString(),
              password: passwordController.text.toString())
          .then((value) {
        Future.delayed(Duration(seconds: 2), () {
          Get.to(
            () => const admin_page(),
            transition: Transition.zoom,
            duration: Duration(seconds: 1),
          );
        });
        setState(() {
          loading = false;
        });
      }).onError((error, stackTrace) {
        Utils().toastMessage(error.toString());
        setState(() {
          loading = false;
        });
      });
    } else {
      setState(() {
        loading = true;
      });
      _auth
          .createUserWithEmailAndPassword(
              email: emailController.text.toString(),
              password: passwordController.text.toString())
          .then((value) {
        SessionController().userId = value.user!.uid.toString();
        ref.child(value.user!.uid.toString()).set({
          'uid': value.user!.uid.toString(),
          'name': nameController.text.toString(),
          'email': value.user!.email.toString(),
          'phone': mobnumController.text.toString(),
          'online status': '',
          'profile': ''
          // 'name': nameCon,
        }).then((value) {
          loading = false;
        }).onError((error, stackTrace) {
          loading = false;
          Utils().toastMessage(error.toString());
        });
        Future.delayed(Duration(seconds: 2), () {
          Get.to(
            () => const Mymainpage(),
            transition: Transition.zoom,
            duration: Duration(seconds: 1),
          );
        });
        setState(() {
          loading = false;
        });
      }).onError((error, stackTrace) {
        Utils().toastMessage(error.toString());
        setState(() {
          loading = false;
        });
      });
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Alert"),
                content: const Text("Do you want to exit ?"),
                actions: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () => SystemNavigator.pop(),
                    child: const Text("Exit"),
                  ),
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFF0A0F22),
        // appBar: AppBar(
        //   title: Text("My Sign Up"),
        //   backgroundColor: Colors.indigo,
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  height: 670,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/sign.png"),
                      colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.3),
                        BlendMode.modulate,
                      ),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 310,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 73),
                          child: TextFormField(
                            controller: nameController,
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF13C89F), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white38, width: 2.0),
                              ),
                              prefixIcon: Icon(
                                Icons.account_circle_outlined,
                                color: Colors.white38,
                              ),
                              border: OutlineInputBorder(),
                              labelText: "Name",
                              labelStyle: TextStyle(
                                color: Colors.white54, //<-- SEE HERE
                              ),
                            ),
                            validator: (String? value) {
                              if (value != null && value.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: 310,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: emailController,
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            autofillHints: [AutofillHints.email],
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF13C89F), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white38, width: 2.0),
                              ),
                              prefixIcon: Icon(
                                Icons.email_rounded,
                                color: Colors.white38,
                              ),
                              border: OutlineInputBorder(),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Colors.white54, //<-- SEE HERE
                              ),
                            ),
                            validator: (email) =>
                                email != null && !EmailValidator.validate(email)
                                    ? 'Enter a valid email'
                                    : null,
                            // validator: (String? value) {
                            //   if (value != null &&
                            //       value.isEmpty &&
                            //       !value.contains('@gmail.com')) {
                            //     return "Email cannot be empty or wrong input";
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                      ),
                      // Container(
                      //   width: 310,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(top: 20),
                      //     child: TextFormField(
                      //       style: TextStyle(color: Colors.white),
                      //       keyboardType: TextInputType.number,
                      //       decoration: InputDecoration(
                      //         focusedBorder: OutlineInputBorder(
                      //           borderSide:
                      //               BorderSide(color: Color(0xFF13C89F), width: 2.0),
                      //         ),
                      //         enabledBorder: OutlineInputBorder(
                      //           borderSide:
                      //               BorderSide(color: Colors.white38, width: 2.0),
                      //         ),
                      //         prefixIcon: Icon(
                      //           Icons.access_time_filled_rounded,
                      //           color: Colors.white38,
                      //         ),
                      //         border: OutlineInputBorder(),
                      //         labelText: "Age",
                      //         labelStyle: TextStyle(
                      //           color: Colors.white54, //<-- SEE HERE
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      //mobile number controller
                      Container(
                        width: 310,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: mobnumController,
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF13C89F), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white38, width: 2.0),
                              ),
                              prefixIcon: Icon(
                                Icons.call,
                                color: Colors.white38,
                              ),
                              border: OutlineInputBorder(),
                              labelText: "Phone#",
                              labelStyle: TextStyle(
                                color: Colors.white54, //<-- SEE HERE
                              ),
                            ),
                            validator: (String? value) {
                              if (value != null && value.isEmpty) {
                                return "phone number cannot be empty";
                              } else if (value != null && value.length < 11) {
                                return "Incorrect number enter";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: 310,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: passwordController,
                            style: TextStyle(color: Colors.white),
                            obscureText: _isObscure1,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure1
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white38,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure1 = !_isObscure1;
                                    });
                                  }),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF13C89F), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white38, width: 2.0),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white38,
                              ),
                              border: OutlineInputBorder(),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Colors.white54, //<-- SEE HERE
                              ),
                            ),
                            validator: (String? value) {
                              if (value != null && value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value != null && value.length < 8) {
                                return "Password should be greater than 8";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: 310,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: confirmpasswordController,
                            style: TextStyle(color: Colors.white),
                            obscureText: _isObscure2,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure2
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white38,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure2 = !_isObscure2;
                                    });
                                  }),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF13C89F), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white38, width: 2.0),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white38,
                              ),
                              border: OutlineInputBorder(),
                              labelText: "Confirm Password",
                              labelStyle: TextStyle(
                                color: Colors.white54, //<-- SEE HERE
                              ),
                            ),
                            validator: (String? value) {
                              if (passwordController.text.toString() !=
                                  confirmpasswordController.text.toString()) {
                                return "Wrong Password ";
                              } else if (value != null && value.isEmpty) {
                                return "password must not be empty ";
                              } else if (value != null && value.length < 8) {
                                return "Password should be greater than 8";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 240,
                        child: ElevatedButton(
                          onPressed: () => moveToHome(context),
                          child: loading
                              ? CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: Color(0xFF0A0F22),
                                )
                              : Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Color(0xFF0A0F22),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.blueGrey,
                            elevation: 5,
                            primary: Color(0xFF13C89F),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: Text(
                          "OR",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 75),
                              child: Text(
                                "Already have account?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              child: TextButton(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Color(0xFF13C89F),
                                      decoration: TextDecoration.underline),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Mylogin()));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
