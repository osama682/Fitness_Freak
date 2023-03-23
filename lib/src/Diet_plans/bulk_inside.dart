import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bulk_inside extends StatelessWidget {
  const bulk_inside({Key? key}) : super(key: key);

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
          title: Text("Bulk Diet Plan"),
          centerTitle: true,
        ),
        drawer: Mydrawer(),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVsa3klMjBmb29kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.2),
                  BlendMode.modulate,
                ),
                fit: BoxFit.cover,
              ),
            ),
            //All page columns
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Choose one meal",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 35,
                          fontFamily: 'ACETONE'),
                    ),
                  ),

                  //1.
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      "BREAKFAST                                          ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      // A single row contain image and both text
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse3.mm.bing.net/th?id=OIP.geym8T3RAE0fiFgNIH1m3QHaHa&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "6 egg omelette with spinach",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 564 kcal                    ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.TG7-X9qx1ACqAc_fgYhvdwHaHa&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Large portion of granola,\nwhole milk and sliced\nbanana",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 750 kcal             ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse4.mm.bing.net/th?id=OIP.jvmzCkx5pDTSTrWoUErkgQHaFj&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "1 or 2 bagels with peanut\nbutter",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 380/760 kcal      ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.mIwLRL9Tc-2rBauCjLaemAHaHa&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "2 Poached eggs, salmon\nand avocado",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 550 kcal              ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  //2.
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      "MORNING MEAL                                    ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      // A single row contain image and both text
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse4.mm.bing.net/th?id=OIP.14sisxRKkJgd7A0gOU70WgHaC0&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Progain flapjack   ",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 324 kcal",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.IKY277gSGJLc5J0T9N5PLAHaHa&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Progain extreme shake",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 600 kcal           ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse3.mm.bing.net/th?id=OIP.VniYft3IcW3ZN60wLRHgoQHaE7&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Handful of almonds              ",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 92 kcal per serving",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.MKJuHNgv9D5jFFrLtVdXFgHaFy&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Apple with peanut butter",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 200 kcal              ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse3.mm.bing.net/th?id=OIP.-R56Zznqsu3xftpoWv0-1AHaD8&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Small portion of chicken\nbreast, tomatoes, celery\nand brown rice",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 450 kcal              ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //3.
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      "LUNCH                                                 ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      // A single row contain image and both text
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse1.mm.bing.net/th?id=OIP.Ii7mH6hODjptDEZW_mh6OAHaHj&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Double chicken breast,\nbroccoli and rice   ",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 700 kcal         ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse4.mm.bing.net/th?id=OIP.KYxFHLrRZeCowo6shmusIQHaHa&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Salmon, sweet potatoes\n and sesame seeds",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 700 kcal           ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse1.mm.bing.net/th?id=OIP.UbPP2SbC7mq9X_UCXNfsSgHaE7&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Chicken breast, salsa,\nbrown rice and peppers",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 720 kcal           ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.qwJuQY69JCYa3anOZhaiNgHaKD&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Vegetarian bean chili burritos",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 900 kcal                     ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse3.mm.bing.net/th?id=OIP.oNzVNUQX68gKDftgGwevbQHaHa&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Tinned tuna, quinoa, avocado\nand broccoli",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 500 kcal                      ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //4.
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      "EVENING MEAL                                    ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      // A single row contain image and both text
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse1.mm.bing.net/th?id=OIP.Ii7mH6hODjptDEZW_mh6OAHaHj&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Dark chocolate                             ",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "a single ounce is 153 kcal.         ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse4.mm.bing.net/th?id=OIP.KYxFHLrRZeCowo6shmusIQHaHa&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Mass gainer shake        ",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 600 kcal           ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse1.mm.bing.net/th?id=OIP.UbPP2SbC7mq9X_UCXNfsSgHaE7&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Cup of mixed nuts          ",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 640 kcal           ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.qwJuQY69JCYa3anOZhaiNgHaKD&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Beef Jerky            ",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 410 kcal",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //5.
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      "DINNER                                                 ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      // A single row contain image and both text
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.kwh8m7MqIjS9mlGon9SZ5QHaFj&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Tuna steak with olive oil,\ntwo sweet potatoes and\nquinoa",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 800 kcal             ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse3.mm.bing.net/th?id=OIP.1XpPcrWiSpbHguqeAf-oCwAAAA&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Sirloin steak, white rice and\nfried egg",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 950 kcal                  ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse1.mm.bing.net/th?id=OIP.0ly3hb8cgIFmJ-2mjQAHVAHaE7&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Burger with lean beef, fries,\nwhite bread roll, cup of\ngreen beans",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 1450 kcal               ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse1.mm.bing.net/th?id=OIP.e70DJQSDkahk_lVBP2ZRnQHaEs&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Tuna, pasta and Bolognese\nsauce",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 600 kcal                 ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            // First Image
                            Container(
                              height: 90.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse4.mm.bing.net/th?id=OIP.fOwE_-cy_upgTg7N6veMdgHaFc&pid=Api&P=0"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: Text(
                                      "Chili con carne with rolls of\nbread",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "approx. 700 kcal                  ",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
