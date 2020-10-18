import 'package:flutter/material.dart';
import 'package:katching_app/MonthlyExpensesPage.dart';
import 'package:katching_app/SlideTransition.dart';

// ignore: must_be_immutable
class FoodPage extends StatefulWidget {
  List<String> userSelection;
  FoodPage({this.userSelection});
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new Stack(
        children: <Widget>[
    Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/RentPage.png"),
      fit: BoxFit.cover,
    ),
    ),
    ),Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Container(
              //color: Colors.grey,
                child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:50.0),
                        child: Text(
                          'How much do you want to spend on food?',
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
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            widget.userSelection[3] = '1';
                            Navigator.push(context,
                                SlideRightRoute(page: MonthlyExpensesPage(userSelection:widget.userSelection)));
                          },
                          child: Text(
                            '\$',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.lightBlue[900],
                              fontSize: 17,
                            ),
                          ),
                          style: raisedButtonStyle2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            widget.userSelection[3] = '2';
                            Navigator.push(context,
                                SlideRightRoute(page: MonthlyExpensesPage(userSelection:widget.userSelection)));
                          },
                          child: Text(
                            '\$\$',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.lightBlue[900],
                              fontSize: 17,
                            ),
                          ),
                          style: raisedButtonStyle2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            widget.userSelection[3] = '3';
                            Navigator.push(context,
                                SlideRightRoute(page: MonthlyExpensesPage(userSelection:widget.userSelection)));
                          },
                          child: Text(
                            '\$\$\$',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.lightBlue[900],
                              fontSize: 17,
                            ),
                          ),
                          style: raisedButtonStyle2,
                        ),
                      ),

                    ]
                )

            ),
          ),
        ],
      ),
    ),],
    ),
    );
  }
}

final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
  onPrimary: Colors.red,
  primary: Colors.white,
  minimumSize: Size(300, 80),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
    side: BorderSide(),
  ),
);