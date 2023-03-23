import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class shred_inside extends StatelessWidget {
  const shred_inside({Key? key}) : super(key: key);

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
          title: Text("Shred Diet Plan"),
          centerTitle: true,
        ),
        drawer: Mydrawer(),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y3V0dGluZyUyMGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
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
                                      "https://tse4.mm.bing.net/th?id=OIP.de_Znz7gWPYNCJ5VYn96HQHaEp&pid=Api&P=0"),
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
                                      "50g wholegrain porridge,\nhandful of blueberries and\na protein shake",
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
                                    "approx. 340 cals                    ",
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
                                      "https://tse4.mm.bing.net/th?id=OIP._jac67A74K5ftcyWzena-wHaFU&pid=Api&P=0"),
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
                                      "4 scrambled egg whites,\n2 slices wholemeal toast",
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
                                    "approx. 410 cals             ",
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
                                      "https://tse3.mm.bing.net/th?id=OIP.UgNjS6WGbV0V_6irRnArQgHaE8&pid=Api&P=0"),
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
                                      "Ham, mushroom and spinach\nfrittata",
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
                                    "approx. 230 cals                      ",
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
                                      "https://tse2.mm.bing.net/th?id=OIP.c-DJX0udJeJqN2lx1b677AHaJQ&pid=Api&P=0"),
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
                                      "Asparagus soldiers with\nsoft boiled egg",
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
                                    "approx. 550 cals            ",
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
                                      "https://tse1.mm.bing.net/th?id=OIP.xD0FEjju8svPcFsLrwgE7gHaHa&pid=Api&P=0"),
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
                                      "Breakfast smoothie with\nbanana, blackberries,\nstrawberries, raspberries,\nwater + honey",
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
                                    "approx. 130 cals            ",
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
                                      "https://tse1.mm.bing.net/th?id=OIP.Rq5T68r8ovJnrzOYk9ok0gHaLG&pid=Api&P=0"),
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
                                      "Whey protein pancakes           ",
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
                                    "approx. 111 cals per pancake",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.DON9JystaIlKYGVz23DH_AHaD4&pid=Api&P=0"),
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
                                      "Banana                  ",
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
                                    "approx. 100 cals",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.Njeunf8LED6XUclmND1KiQHaEK&pid=Api&P=0"),
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
                                      "Any single piece of fruit or\nhandful of berries",
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
                                    "cals vary                              ",
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
                                      "https://tse2.mm.bing.net/th?id=OIP.eXFSNv4E03v-pcvWc50SWAHaE7&pid=Api&P=0"),
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
                                      "1 cup edamame beans             ",
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
                                    "approx. 250 cals                      ",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.jYf4D58H6_ndQFDq056vhgHaE8&pid=Api&P=0"),
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
                                      "Handful of nuts    ",
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
                                    "approx. 160 cals",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.3s0ciQUJ7pTOR5HEu3664gHaHa&pid=Api&P=0"),
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
                                      "Promax Lean Bar",
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
                                    "approx. 206 cals",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.NpyAbULiH7MMme3NX4BfygHaEK&pid=Api&P=0"),
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
                                      "Chicken, brown rice and\nbroccoli   ",
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
                                    "approx. 300 cals           ",
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
                                      "https://tse3.mm.bing.net/th?id=OIP.W-tT6vryPJERSKTW3ZEkrgHaE7&pid=Api&P=0"),
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
                                      "Extra lean ground beef,\ncauliflower and brown rice",
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
                                    "approx. 300 cals                ",
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
                                      "https://tse3.mm.bing.net/th?id=OIP.Awok9Uf1VkGveeNBJbQ23wHaE8&pid=Api&P=0"),
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
                                      "Grilled courgette, kale,\npepper and humous wrap",
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
                                    "approx. 332 cals           ",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.np-QokuX1wlgARfJ09uAswHaFj&pid=Api&P=0"),
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
                                      "Chicken wrap with tomatoes,\ncucumber, olives and hummus",
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
                                    "approx. 243 cals                     ",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.b1AEArg-cWM0BrV2Y8dLFAHaE8&pid=Api&P=0"),
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
                                      "Chilli with quorn mince",
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
                                    "approx. 275 cals         ",
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
                                      "https://tse3.mm.bing.net/th?id=OIP.T1D9uIgWvzgt8rQ_oEfdZAHaHa&pid=Api&P=0"),
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
                                      "Apple and almond butter",
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
                                    "approx. 270 cals          ",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.ZUTt0KCjXPP98_mC_2aZCQHaFm&pid=Api&P=0"),
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
                                      "Almonds                     ",
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
                                    "approx. 160 calories\nper 22 almonds",
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
                                      "https://tse1.mm.bing.net/th?id=OIP.GvdIhpKljXPglDNSn2Zr5AHaD4&pid=Api&P=0"),
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
                                      "Promax Lean shake        ",
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
                                    "approx. 240 calories for\n a 2 scoop serving",
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
                                      "https://tse1.mm.bing.net/th?id=OIP.98zyZORmlxqbJO4cY-wczgHaHa&pid=Api&P=0"),
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
                                      "Greek yoghurt     ",
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
                                    "approx. 59 cals",
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
                                      "https://tse2.mm.bing.net/th?id=OIP.bnZnNFxToYUZAvEnJKyvtQEsCr&pid=Api&P=0"),
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
                                      "Tuna steak, two sweet potatoes,\nbroccoli and asparagus",
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
                                    "approx. 350 cals                          ",
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
                                      "https://tse1.mm.bing.net/th?id=OIP.0f9OmBVECtAQNS_oE6PGJAHaEK&pid=Api&P=0"),
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
                                      "Chicken burger with whole-\nwheat bread + fried egg",
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
                                    "approx. 500 cals                  ",
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
                                      "https://tse4.mm.bing.net/th?id=OIP.FBwPGfXqtIU8W85fBHSzRQHaKL&pid=Api&P=0"),
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
                                      "Chicken stew with quinoa\nand beans",
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
                                    "approx. 330 cals               ",
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
                                      "https://tse3.mm.bing.net/th?id=OIP.1BdKORnHzzOMaepOJh5S9gHaE8&pid=Api&P=0"),
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
                                      "Beef stir-fry with brown rice",
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
                                    "approx. 400 cals                 ",
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
                                      "https://tse1.mm.bing.net/th?id=OIP.p_dqY1EEir5m-kvUVLmgoQHaHa&pid=Api&P=0"),
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
                                      "Low calorie chicken korma,\nreplacing cream with yoghurt",
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
                                    "approx. 370 cals                    ",
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
                                      "https://tse3.mm.bing.net/th?id=OIP.pcAVAS8LFQSR8zkIpunE6gHaFj&pid=Api&P=0"),
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
                                      "Singapore noodles",
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
                                    "approx. 415 cals  ",
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
