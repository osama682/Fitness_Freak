import 'package:fitness_freak/src/SideBar/side_bar_6.dart';
import 'package:flutter/material.dart';

class food_and_nutrition extends StatelessWidget {
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
        title: Text('Food and Nutrition'),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              child: Table(
                columnWidths: const {
                  0: FixedColumnWidth(120),
                  1: FixedColumnWidth(53),
                  2: FixedColumnWidth(53),
                  3: FixedColumnWidth(56),
                  4: FixedColumnWidth(56),
                },
                // defaultColumnWidth: FixedColumnWidth(80.0),
                border: TableBorder.all(
                    color: Color(0xFF14CDA2),
                    style: BorderStyle.solid,
                    width: 1),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text('100g per food',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF14CDA2),
                            ))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text('Cals',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFF14CDA2),
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(children: [
                        Text('Fat',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFF14CDA2),
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(children: [
                        Text('Protein',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFF14CDA2),
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(children: [
                        Text('Carbs',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFF14CDA2),
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                  ]),

                  //2.
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Walnuts',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '654',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '65g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '15g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '14g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //3
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Hazelnuts',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '628',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '61g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '15g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '17g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //4
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Sunflower\nseeds',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '584',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '51g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '21g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '20g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //5
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Almonds',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '575',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '49g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '21g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '22g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //6
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Seasame\nseeds',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '573',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '50g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '18g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '23g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //7
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Pumpkin seeds',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '541',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '46g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '25g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '18g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //8
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Soybeans',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '446',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '20g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '36g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '30g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //9

                  //10
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Beans, Pinto',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '347',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '1g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '21g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '63g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //11
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Black beans',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '341',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '1g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '22g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '62g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),

                  //12
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Beans, Kidney',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '337',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '1g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '22g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '61g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),

                  //13
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Beans, Navy',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '337',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '1g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '22g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '61g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),

                  //14
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Cranberry\nBeans',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '335',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '1g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '23g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '60g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                  //17
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Garlic',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '149',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '0g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '6g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '33g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),

                  //18
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Yums',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '118',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '0g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '2g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '28g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),

                  //19
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Bananas',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '89',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '0g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '1g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '23g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),

                  //20
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Corns',
                          style:
                              TextStyle(color: Color(0xFF14CDA2), fontSize: 15),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '86',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '1g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '3g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          '19g',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ])),
      ),
    );
  }
}
