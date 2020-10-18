import 'package:flutter/material.dart';
import 'package:katching_app/MonthlyIncomePage.dart';
import 'package:katching_app/SlideTransition.dart';
// ignore: must_be_immutable
class CityPage extends StatefulWidget {
  List<String> userSelection;
  CityPage({this.userSelection});
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  String dropdownValue = 'Select a City';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:new Stack(
        children: <Widget>[
    Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/CityPage.png"),
      fit: BoxFit.cover,
    ),
    ),
    ), Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Text("Your Job selected:"),
          //Text(widget.userSelection[0]),
          Text("City"),
          Container(
            //width: 300.0,
            //color: Colors.lightBlue,
            child: DropdownButton(
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              iconSize: 20,
              elevation: 0,
              /*style: TextStyle(
                color: Colors.deepPurple,
              ),*/
              //dropdownColor: Colors.lightBlue[50],
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
                widget.userSelection[1] = dropdownValue;

              },
              items: <String>['Select a City', 'Seattle', 'New York', 'Kansas City']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          RaisedButton(
              child: Text("next"),
              onPressed: () {
                if(dropdownValue != "Select a City") {
                  Navigator.push(context,
                      SlideRightRoute(page: MonthlyIncomePage(
                          userSelection: widget.userSelection)));
                }
              }
          ),
        ],
      ),
    ),
  ],
          ),
    );
  }
}
