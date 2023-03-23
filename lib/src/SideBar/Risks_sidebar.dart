import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myrisks extends StatelessWidget {
  const Myrisks({Key? key}) : super(key: key);

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
        centerTitle: true,
        title: Text("Hazards"),
        backgroundColor: Color(0xFF14CDA2),
      ),
      drawer: Mydrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1591741543032-bf439b4fd46c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fGd5bSUyMGFjY2lkZW50cyUyMGJveXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.modulate,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Hazards",
                  style: TextStyle(
                    fontSize: 43,
                    fontFamily: 'ACETONE',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF13C89F),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  //style for all textspan
                  children: [
                    //1.
                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Crushing injury from falling weights\n\n",
                      style: TextStyle(fontSize: 17),
                    ),

                    //2.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Falling from the treadmill\n\n",
                      style: TextStyle(fontSize: 17),
                    ),

                    //3.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Slip and fall on a wet floor\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //4.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Overstretching\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //5.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Poor lifting technique\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //6.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Accident from indoor rock climbing\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //7.
                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Trip and fall from free weights\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //8.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Accident from faulty equipment\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //9.
                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Unprofessional gym instructor\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //10.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Biological Hazards.\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //11.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Chemical Hazards.\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //12.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Physical Hazards.\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //13.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Safety Hazards.\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //14.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Ergonomic Hazards\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                    //15.

                    WidgetSpan(
                      child: Icon(
                        Icons.circle,
                        size: 14,
                        color: Color(0xFF13C89F),
                      ),
                    ),
                    TextSpan(
                      text: "  Psychosocial Hazards\n\n",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
