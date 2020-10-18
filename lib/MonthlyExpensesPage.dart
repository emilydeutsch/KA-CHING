import 'package:flutter/material.dart';
import 'package:katching_app/SlideTransition.dart';
import 'package:katching_app/OverviewProfitPage.dart';

// ignore: must_be_immutable
class MonthlyExpensesPage extends StatefulWidget {
  List<String> userSelection;

  MonthlyExpensesPage({this.userSelection});

  @override
  _MonthlyExpensesPageState createState() => _MonthlyExpensesPageState();
}

class _MonthlyExpensesPageState extends State<MonthlyExpensesPage> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/RentPage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Container(
                      //color: Colors.grey,
                      child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(
                        'Here\'s your monthly expenses ?',
                        style: TextStyle(
                          fontFamily: 'QuickSand',
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "\$" + (expense1_map[widget.userSelection[2]][widget.userSelection[1]]+expense2_map[widget.userSelection[3]]+1000).toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Color(0xff0EAD69),
                          primary: Color(0xff0EAD69),
                          minimumSize: Size(300, 80),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                            side: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              SlideRightRoute(page: OverviewProfitPage(userSelection:widget.userSelection)));
                        },
                        child: Text(
                          'Looks good!',
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
                  ])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
