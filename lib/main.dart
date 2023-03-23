import 'package:fitness_freak/Admin/Admin_view.dart';

import 'package:fitness_freak/Shop/checkout_widget.dart';
import 'package:fitness_freak/Profile/profile_page.dart';
import 'package:fitness_freak/Shop/product_detail_widget.dart';
import 'package:fitness_freak/splash_screen.dart';
import 'package:fitness_freak/src/ABS/choose_abs_exer.dart';
import 'package:fitness_freak/src/Diet_plans/bulk_inside.dart';
import 'package:fitness_freak/src/Diet_plans/choose_diet_plan.dart';
import 'package:fitness_freak/src/Diet_plans/shred_inside.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Biceps_beg/Biceps_beg_exercises.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Chest_beg/Chest_beg_exercises.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Leg_beg/leg_beg_exer.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Shoulder_beg/beg_shoulder_ex.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Triceps_beg/Tri_beg_exercises.dart';
import 'package:fitness_freak/src/Exercises/Beginner/Wings_beg/Wings_beg_exercises.dart';
import 'package:fitness_freak/src/Exercises/Expert/Biceps_expert/expert_biceps_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Chest_expert/expert_chest_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Shoulder_expert/expert_shoulder_exer.dart';
import 'package:fitness_freak/src/Exercises/Expert/Triceps_expert/expert_triceps_exer.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Biceps_inter/biceps_inter_ex.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Chest_inter/Choose_EX_inter.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Legs_inter/inter_leg_exer.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Shoulder_inter/shoulder_inter_ex.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Triceps_inter/inter_triceps_exer.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/Wings_inter/wings_inter_ex.dart';
import 'package:fitness_freak/src/SideBar/Calorie_Calculator.dart';
import 'package:fitness_freak/Main_page_5.dart';
import 'package:fitness_freak/src/Exercises/Expert/choose_exercise_expert.dart';
import 'package:fitness_freak/src/Exercises/Beginner/choose_exercise_beginner.dart';
import 'package:fitness_freak/src/Exercises/ex_levels.dart';
import 'package:fitness_freak/src/Exercises/Intermediate/choose_exercise_intermediate.dart';
import 'package:fitness_freak/src/Registeration/login_4.dart';
import 'package:fitness_freak/src/SideBar/Risks_sidebar.dart';
import 'package:fitness_freak/src/SideBar/food_and_nutrition.dart';
import 'package:fitness_freak/src/SideBar/online_training.dart';
// import 'package:fitness_freak/src/SideBar/homepage.dart';
import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:fitness_freak/src/Registeration/signup_3.dart';
import 'package:fitness_freak/src/Registeration/signup_login_2.dart';

import 'package:fitness_freak/src/WarmUp/warm_list.dart';

import 'package:fitness_freak/src/WarmUp/warm_up_supporting_pushup.dart';
import 'package:fitness_freak/src/WarmUp/warmup_bearcrawl.dart';
import 'package:fitness_freak/src/WarmUp/warmup_one_arm_pushup.dart';
import 'package:fitness_freak/src/WarmUp/warmup_simple_pushup.dart';
import 'package:fitness_freak/src/WarmUp/warmup_triceps_dips.dart';
import 'package:fitness_freak/src/WarmUp/warmup_wholebody_ex.dart';
import 'package:fitness_freak/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:fitness_freak/src/Registeration/signup_login_2.dart';
import 'src/SideBar/Contact_Us.dart';
import 'src/Registeration/introduction1.dart';
import 'package:get/get.dart';
import 'package:fitness_freak/Shop/car.dart';
import 'package:fitness_freak/dbhelper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:fitness_freak/bloc/cart_bloc.dart';
import 'package:fitness_freak/Shop/product_listing_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Shop/bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_freak/Firebase_services/splash_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high_importance_channel', 'high Importance Notification',
//     importance: Importance.high, playSound: true);
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print("A big message showed up : ${message.messageId}");
// }

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a baxckground message: ${message.messageId}");
}

Future<void> main() async {
  Bloc.observer = SimpleBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<
  //         AndroidFlutterLocalNotificationsPlugin>()
  //     ?.createNotificationChannel(channel);
  //
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(
    0xFF13C89F,
    <int, Color>{
      50: Color(0xFF13C89F),
      100: Color(0xFF13C89F),
      200: Color(0xFF13C89F),
      300: Color(0xFF13C89F),
      400: Color(0xFF13C89F),
      500: Color(0xFF13C89F),
      600: Color(0xFF13C89F),
      700: Color(0xFF13C89F),
      800: Color(0xFF13C89F),
      900: Color(0xFF13C89F),
    },
  );
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (BuildContext context) => CartBloc(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // themeMode: ThemeMode.dark,
        // darkTheme: ThemeData(brightness: Brightness.dark),
        theme: ThemeData(
          primarySwatch: mycolor,
        ),
        home: splashScreen(),
      ),
    );
    // return GetMaterialApp(
    //   theme: ThemeData(primarySwatch: mycolor),
    //   debugShowCheckedModeBanner: false,
    //   home: Mymainpage(),
    // );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  final databaseRef = FirebaseDatabase.instance.ref('Schedule');
  final dbHelper = DatabaseHelper.instance;

  List<Car> cars = [];
  List<Car> carsByName = [];

  //controllers used in insert operation UI
  TextEditingController nameController = TextEditingController();
  TextEditingController milesController = TextEditingController();

  //controllers used in update operation UI
  TextEditingController dateupdateController = TextEditingController();
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController milesUpdateController = TextEditingController();

  //controllers used in delete operation UI
  TextEditingController idDeleteController = TextEditingController();

  //controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  //for calendar/date
  TextEditingController dateinputController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
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
          bottom: TabBar(
            tabs: [
              Tab(
                text: "  Insert\nSchedule",
              ),
              Tab(
                text: "   View\nSchedule",
              ),
              // Tab(
              //   text: "Query",
              // ),
              Tab(
                text: " Update\nSchedule",
              ),
              Tab(
                text: "  Delete\nSchedule",
              ),
            ],
          ),
          title: Text('Add Schedule'),
          centerTitle: true,
        ),
        drawer: Mydrawer(),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          controller: dateinputController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
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
                              Icons.calendar_month,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Date",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "ID cannot be empty";
                            }
                            return null;
                          },
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              //pickedDate output format => 2021-03-10 00:00:00.000
                              String date =
                                  DateFormat.yMMMEd().format(pickedDate);
                              //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinputController.text = date
                                    .toString(); //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
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
                              borderSide:
                                  BorderSide(color: Colors.white38, width: 2.0),
                            ),
                            prefixIcon: Icon(
                              Icons.title,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Title",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "Title cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          maxLength: 500,
                          maxLines: 1,
                          controller: milesController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
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
                              Icons.description_outlined,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Description",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "Description cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.save,
                            color: Color(0xFF0A0F22),
                            size: 24.0,
                          ),
                          label: loading
                              ? CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: Color(0xFF0A0F22),
                                )
                              : Text(
                                  "Save",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                          style: ElevatedButton.styleFrom(
                            // backgroundColor: Colors.indigo,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              String date = dateinputController.text;
                              String name = nameController.text;
                              String miles = milesController.text;
                              _insert(date, name, miles);
                              databaseRef
                                  .child(DateTime.now()
                                      .millisecondsSinceEpoch
                                      .toString())
                                  .set({
                                'Date': dateinputController.text.toString(),
                                'Title': nameController.text.toString(),
                                'Description': milesController.text.toString()
                              }).then((value) {
                                Utils().toastMessage("Post added");
                                setState(() {
                                  loading = false;
                                });
                              }).onError((error, stackTrace) {
                                Utils().toastMessage(error.toString());
                                setState(() {
                                  loading = false;
                                });
                              });
                              setState(() {
                                loading = true;
                              });
                              Fluttertoast.showToast(
                                msg: "Schedule saved successfully!",
                                fontSize: 15,
                              );
                              setState(() {
                                dateinputController.clear();
                              });
                              setState(() {
                                nameController.clear();
                              });
                              setState(() {
                                milesController.clear();
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cars.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == cars.length) {
                    return Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        height: 50,
                        width: 20,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.refresh,
                            color: Color(0xFF0A0F22),
                            size: 22.0,
                          ),
                          label: const Text(
                            "Refresh",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            // backgroundColor: Colors.indigo,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: "Refreshing...",
                              fontSize: 15,
                            );
                            setState(() {
                              _queryAll();
                            });
                          },
                        ),
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 40,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "${cars[index].id}- ",
                                      style: TextStyle(
                                          color: Color(0xFF13C89F),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "${cars[index].date} ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "     title: ",
                                      style: TextStyle(
                                        color: Color(0xFF13C89F),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "${cars[index].name}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Wrap(
                                children: [
                                  Container(
                                    child: Text(
                                      "Description: ",
                                      style: TextStyle(
                                        color: Color(0xFF13C89F),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "${cars[index].miles}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // SingleChildScrollView(
            //   child: Center(
            //     child: Column(
            //       children: <Widget>[
            //         Container(
            //           padding: EdgeInsets.all(20),
            //           child: TextField(
            //             controller: queryController,
            //             maxLength: 500,
            //             maxLines: 5,
            //             style: TextStyle(color: Colors.white),
            //             keyboardType: TextInputType.text,
            //             decoration: InputDecoration(
            //               focusedBorder: OutlineInputBorder(
            //                 borderSide: BorderSide(
            //                     color: Color(0xFF13C89F), width: 2.0),
            //               ),
            //               enabledBorder: OutlineInputBorder(
            //                 borderSide:
            //                     BorderSide(color: Colors.white38, width: 2.0),
            //               ),
            //               prefixIcon: Icon(
            //                 Icons.question_mark,
            //                 color: Colors.white38,
            //               ),
            //               border: OutlineInputBorder(),
            //               labelText: "query",
            //               labelStyle: TextStyle(
            //                 color: Colors.white54, //<-- SEE HERE
            //               ),
            //             ),
            //             onChanged: (text) {
            //               if (text.length >= 2) {
            //                 setState(() {
            //                   _query(text);
            //                 });
            //               } else {
            //                 setState(() {
            //                   carsByName.clear();
            //                 });
            //               }
            //             },
            //           ),
            //           height: 100,
            //         ),
            //         Container(
            //           height: 300,
            //           child: ListView.builder(
            //             padding: const EdgeInsets.all(8),
            //             itemCount: carsByName.length,
            //             itemBuilder: (BuildContext context, int index) {
            //               return Container(
            //                 height: 50,
            //                 margin: EdgeInsets.all(2),
            //                 child: Center(
            //                   child: Text(
            //                     '[${carsByName[index].id}] ${carsByName[index].name} - ${carsByName[index].miles} miles',
            //                     style: TextStyle(fontSize: 18),
            //                   ),
            //                 ),
            //               );
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SingleChildScrollView(
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          controller: idUpdateController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
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
                              Icons.perm_identity,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "ID",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "ID cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          controller: dateupdateController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
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
                              Icons.calendar_month,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Date",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "Date cannot be empty";
                            }
                            return null;
                          },
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              //pickedDate output format => 2021-03-10 00:00:00.000
                              String date =
                                  DateFormat.yMMMEd().format(pickedDate);
                              //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateupdateController.text = date
                                    .toString(); //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          controller: nameUpdateController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
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
                              Icons.title,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Title",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "Title cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          controller: milesUpdateController,
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
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
                              Icons.description_outlined,
                              color: Colors.white38,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Description",
                            labelStyle: TextStyle(
                              color: Colors.white54, //<-- SEE HERE
                            ),
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "Description cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.update,
                            color: Color(0xFF0A0F22),
                            size: 24.0,
                          ),
                          label: loading
                              ? CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: Color(0xFF0A0F22),
                                )
                              : Text(
                                  "Update",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                          style: ElevatedButton.styleFrom(
                            // backgroundColor: Colors.indigo,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Fluttertoast.showToast(
                                msg: "Updating...",
                                fontSize: 15,
                              );
                              int id = int.parse(idUpdateController.text);
                              String date = dateupdateController.text;
                              String name = nameUpdateController.text;
                              String miles = milesUpdateController.text;
                              _update(id, date, name, miles);
                              databaseRef
                                  .child(DateTime.now()
                                      .millisecondsSinceEpoch
                                      .toString())
                                  .set({
                                'Date': dateupdateController.text.toString(),
                                'Title': nameUpdateController.text.toString(),
                                'Description':
                                    milesUpdateController.text.toString()
                              }).then((value) {
                                Utils().toastMessage("Post added");
                                setState(() {
                                  loading = false;
                                });
                              }).onError((error, stackTrace) {
                                Utils().toastMessage(error.toString());
                                setState(() {
                                  loading = false;
                                });
                              });
                              setState(() {
                                loading = true;
                              });
                              Fluttertoast.showToast(
                                msg: "Updated successfully!",
                                fontSize: 15,
                              );
                              setState(() {
                                idUpdateController.clear();
                              });
                              setState(() {
                                dateupdateController.clear();
                              });
                              setState(() {
                                nameUpdateController.clear();
                              });
                              setState(() {
                                milesUpdateController.clear();
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
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
                          Icons.delete,
                          color: Colors.white38,
                        ),
                        border: OutlineInputBorder(),
                        labelText: "ID",
                        labelStyle: TextStyle(
                          color: Colors.white54, //<-- SEE HERE
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 40,
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.delete,
                        color: Color(0xFF0A0F22),
                        size: 22.0,
                      ),
                      label: const Text(
                        "Delete",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.indigo,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        int id = int.parse(idDeleteController.text);
                        _delete(id);
                        Fluttertoast.showToast(
                          msg: "Deleted successfully!",
                          fontSize: 15,
                        );
                        setState(() {
                          idDeleteController.clear();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _insert(date, name, miles) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columndate: date,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnMiles: miles
    };
    Car car = Car.fromMap(row);
    final id = await dbHelper.insert(car);
    // _showMessageInScaffold('inserted row id: $id');
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    cars.clear();
    allRows.forEach((row) => cars.add(Car.fromMap(row)));
    // _showMessageInScaffold('Query done.');
    setState(() {});
  }

  // void _query(name) async {
  //   final allRows = await dbHelper.queryRows(name);
  //   carsByName.clear();
  //   allRows.forEach((row) => carsByName.add(Car.fromMap(row)));
  // }

  void _update(id, date, name, miles) async {
    // row to update
    Car car = Car(id, date, name, miles);
    final rowsAffected = await dbHelper.update(car);
    // _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    // _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}
