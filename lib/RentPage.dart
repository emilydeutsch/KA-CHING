import 'package:flutter/material.dart';
import 'package:katching_app/FoodPage.dart';
import 'package:katching_app/SlideTransition.dart';

// ignore: must_be_immutable
class RentPage extends StatefulWidget {
  List<String> userSelection;

  RentPage({this.userSelection});

  @override
  _RentPageState createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
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
                      child: Center(
                    child: Column(children: <Widget>[
                      Center(
                        heightFactor: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Text(
                            'Choose your living arrangements',
                            style: TextStyle(
                              fontFamily: 'QuickSand',
                              color: Colors.black87,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton.icon(
                          onPressed: () {
                              widget.userSelection[2] = 'one';
                              Navigator.push(
                                  context,
                                  SlideRightRoute(
                                      page: FoodPage(
                                          userSelection: widget.userSelection))
                              );
                          },
                          icon: SizedBox(
                              width: 50,
                              child: Image.asset("lib/images/one.png")
                          ),
                          label: Text(
                            'One bedroom',
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
                        child: ElevatedButton.icon(
                          onPressed: () {
                            widget.userSelection[2] = 'two';
                            Navigator.push(
                                context,
                                SlideRightRoute(
                                    page: FoodPage(
                                        userSelection: widget.userSelection))
                            );
                          },
                          icon: SizedBox(
                            width: 50,
                            child: Image.asset("lib/images/two.png")
                            ),
                          label: Text(
                            'Two bedrooms',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.lightBlue[900],
                              fontSize: 17,
                            ),
                          ),
                          style: raisedButtonStyle2,
                        ),
                      )
                    ]),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
