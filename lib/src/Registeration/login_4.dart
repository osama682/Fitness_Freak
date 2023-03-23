import 'package:fitness_freak/Admin/Admin_view.dart';
import 'package:fitness_freak/src/SideBar/forgot_password.dart';
import 'package:fitness_freak/src/Registeration/signup_3.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../Main_page_5.dart';
import 'package:fitness_freak/session_manager.dart';
import 'package:email_validator/email_validator.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      login();
    }
  }

  bool loading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  void login() {
    if (emailController.text.toString() == "adminou@gmail.com" &&
        passwordController.text.toString() == "Foradmin87") {
      setState(() {
        loading = true;
      });
      _auth
          .signInWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString(),
      )
          .then((value) {
        Success().toastMessage(value.user!.email.toString());
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
        // debugPrint(error.toString());
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
          .signInWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString(),
      )
          .then((value) {
        SessionController().userId = value.user!.uid.toString();
        Success().toastMessage("Login Successfully!");
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
        // debugPrint(error.toString());
        Utils().toastMessage(error.toString());
        setState(() {
          loading = false;
        });
      });
    }
  }

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
        backgroundColor: Color(0xFF0A0F22),
        // appBar: AppBar(
        //   title: Text("My Log in"),
        //   centerTitle: true,
        //   backgroundColor: Colors.indigo,
        // ),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
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
                          padding: const EdgeInsets.only(top: 120),
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
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
                                Icons.email_outlined,
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
                            //       !value.contains('@')) {
                            //     return "Please enter valid email";
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 310,
                        child: TextFormField(
                          controller: passwordController,
                          style: TextStyle(color: Colors.white),
                          obscureText: _isObscure,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white38,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF13C89F), width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white38, width: 2.0),
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
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 55,
                        width: 280,
                        child: ElevatedButton(
                          onPressed: () => moveToHome(context),
                          child: loading
                              ? CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: Color(0xFF0A0F22),
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Color(0xFF0A0F22),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
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
                        height: 15,
                      ),
                      GestureDetector(
                        child: TextButton(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color(0xFF13C89F),
                                decoration: TextDecoration.underline),
                          ),
                          onPressed: () {
                            Get.to(
                              () => const forgot_password(),
                              transition: Transition.zoom,
                              duration: Duration(seconds: 1),
                            );
                          },
                        ),
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
                            SizedBox(
                              width: 97,
                            ),
                            Container(
                              child: Text(
                                "Don't have an account?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              child: TextButton(
                                child: Text(
                                  "Signup",
                                  style: TextStyle(
                                      color: Color(0xFF13C89F),
                                      decoration: TextDecoration.underline),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Mysignup()));
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
