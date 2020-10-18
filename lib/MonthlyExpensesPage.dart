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

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("MonthlyExpenses"),
          ExpenseWidget(),
          RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: OverviewProfitPage(userSelection:widget.userSelection)));
              }
          ),
        ],
      ),
    ),
    );
  }
}

class ExpenseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: Colors.grey,
          child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:50.0),
                  child: Text(
                    'Here\'s your monthly expenses ?',
                    style: TextStyle(
                      fontFamily: 'QuickSand',
                      color: Colors.black87,
                      fontSize: 30,
                      //fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      '\$\$\$',
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
                  padding: const EdgeInsets.only(top:10.0),
                  child: ElevatedButton(
                    onPressed: (){},
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
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Go Back',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Poppins',
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                  //style: raisedButtonStyle2,
                ),

              ]
          )

      ),
    );
  }
}