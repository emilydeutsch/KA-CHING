import 'package:flutter/material.dart';
import 'package:katching_app/MonthOnePage.dart';
import 'package:katching_app/SlideTransition.dart';

import 'StartGamePage.dart';

// ignore: must_be_immutable
class OverviewProfitPage extends StatefulWidget {
  List<String> userSelection;
  OverviewProfitPage({this.userSelection});
  @override
  _OverviewProfitPageState createState() => _OverviewProfitPageState();
}

class _OverviewProfitPageState extends State<OverviewProfitPage> {
  static const Map cost_map = {
    'Teacher': {
      'Seattle': 5331,
      'New York': 5866,
      'Kansas City': 4782,
    },
    'Doctor': {
      'Seattle': 18917,
      'New York': 20808,
      'Kansas City': 16967,
    },
    'Artist': {
      'Seattle': 5075,
      'New York': 5584,
      'Kansas City': 4552,
    }
  };

  static const Map expense1_map = {
    'one': {
      'Seattle': 1250,
      'New York': 2550,
      'Kansas City': 986,
    },
    'two': {
      'Seattle': 2100,
      'New York': 2900,
      'Kansas City': 1180,
    },
  };

  static const Map expense2_map = {
    '1': 165,
    '2': 345,
    '3': 512,
  };
  var colour_val = 800; // Used for the summary descriptions
  var font_size_val = 18.0; // Used for the summary descriptions
  static const vertical_offset = 10.0;
  static const horizontal_offset = 20.0;

  @override
  Widget build(BuildContext context) {
    var occupation = widget.userSelection[0];
    var city = widget.userSelection[1];
    var income = cost_map[occupation][city];//.toString();
    var living = widget.userSelection[2];
    var living_cost = expense1_map[living][city];
    var food = expense2_map[widget.userSelection[3]];
    var expenses = (expense1_map[widget.userSelection[2]][widget.userSelection[1]]+expense2_map[widget.userSelection[3]]+1000);
    var total = income - expenses;
    return Scaffold(body: new Stack(
        children: <Widget>[
    Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/SummaryPage.png"),
      fit: BoxFit.cover,
    ),
    ),
    ),Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Text("OverviewProfitPage"),
          Center(
            child: Container(
              //color: Colors.grey,
                child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right:50.0),
                        child: Text(
                          'Review Your Profile!',
                          style: TextStyle(
                            fontFamily: 'QuickSand',
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            //fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:horizontal_offset, vertical: vertical_offset),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Occupation: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(""),
                              Text(
                                'City: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(""),
                              Text(
                                'Monthly Income: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(""),
                              Text(
                                'Living Arrangements: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(""),
                              Text(
                                'Living Costs: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(""),
                              Text(
                                'Food: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(""),
                              Text(
                                'Other Costs: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),

                              Text(""),
                              Text(
                                'Monthly Expenses: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(""),
                              Text(
                                'Money Left Over: ' ,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:horizontal_offset, vertical: vertical_offset),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /*Occupation*/
                              Text(
                                occupation,//widget.userSelection[0],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Text(""),
                              /*City*/
                              Text(
                                widget.userSelection[1],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Text(""),
                              /*Monthly Income*/
                              Text(
                                "\$" + income.toString(),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),Text(""),
                              /*Living Arrangements*/
                              Text(
                                living + " bedroom",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Text(""),
                              /*Living Costs*/
                              Text(
                                "\$" + living_cost.toString(),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Text(""),
                              /*Food*/
                              Text(
                                "\$" + food.toString(),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Text(""),
                              /*Other Costs*/
                              Text(
                                "\$1000",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Text(""),
                              /*Monthly Expenses*/
                              Text(
                                "\$" + expenses.toString(),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),Text(""),
                              /*Money Leftover*/
                              Text(
                                "\$" + total.toString(),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[colour_val],
                                  fontSize: font_size_val,
                                  fontWeight: FontWeight.bold,
                                  //fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                SlideRightRoute(page: OneMonthPage(Salary:income,Expenses: expenses,)));
                          },
                          child: Text(
                            'Start!',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black87,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            onPrimary: Color(0xffFFD23F),
                            primary: Color(0xffFFD23F),
                            minimumSize: Size(300, 50),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              side: BorderSide(),
                            ),
                          ),
                        ),
                      ),

                    ]
                )

            ),
          ),

          /*RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: StartGamePage(userSelection:widget.userSelection)));
              }
          ),*/
        ],
      ),
    ),
          ],
    ),
    );
  }
}

