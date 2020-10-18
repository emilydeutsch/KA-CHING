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
          //Text("City"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:50.0),
            child: Text(
              'Where do you want to live?',
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
          // Container(
          //   //width: 300.0,
          //   //color: Colors.lightBlue,
          //   child: DropdownButton(
          //     value: dropdownValue,
          //     icon: Icon(Icons.arrow_downward),
          //     iconSize: 20,
          //     elevation: 0,
          //     /*style: TextStyle(
          //       color: Colors.deepPurple,
          //     ),*/
          //     //dropdownColor: Colors.lightBlue[50],
          //     underline: Container(
          //       height: 2,
          //       color: Colors.deepPurpleAccent,
          //     ),
          //     onChanged: (String newValue) {
          //       setState(() {
          //         dropdownValue = newValue;
          //       });
          //       widget.userSelection[1] = dropdownValue;
          //
          //     },
          //     items: <String>['Select a City', 'Seattle', 'New York', 'Kansas City']
          //         .map<DropdownMenuItem<String>>((String value) {
          //       return DropdownMenuItem<String>(
          //         value: value,
          //         child: Text(value),
          //       );
          //     }).toList(),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Select a City'),
          ),
          Container(
            height: 250,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(

                    onPressed: () {
                      widget.userSelection[1] = 'Seattle';
                      Navigator.push(
                          context,
                          SlideRightRoute(
                              page: MonthlyIncomePage(userSelection: widget.userSelection))
                      );
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                              width: 50,
                              child: Image.asset("lib/images/seattle.png")
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Seattle',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.lightBlue[900],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: raisedButtonStyle2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      widget.userSelection[1] = 'New York';
                      Navigator.push(
                          context,
                          SlideRightRoute(
                              page: MonthlyIncomePage(userSelection: widget.userSelection))
                      );
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                              width: 50,
                              child: Image.asset("lib/images/newyork.png")
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'New York',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.lightBlue[900],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: raisedButtonStyle2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      widget.userSelection[1] = 'Kansas City';
                      Navigator.push(
                          context,
                          SlideRightRoute(
                              page: MonthlyIncomePage(userSelection: widget.userSelection))
                      );
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                              width: 50,
                              child: Image.asset("lib/images/kansascity.png")
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Kansas City',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.lightBlue[900],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: raisedButtonStyle2,
                  ),
                ),
              ],
            ),
          ),
          // RaisedButton(
          //     child: Text("next"),
          //     onPressed: () {
          //       if(dropdownValue != "Select a City") {
          //         Navigator.push(context,
          //             SlideRightRoute(page: MonthlyIncomePage(
          //                 userSelection: widget.userSelection)));
          //       }
          //     }
          // ),
        ],
      ),
    ),
  ],
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
