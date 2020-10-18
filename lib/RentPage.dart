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
    return Scaffold(body:new Stack(
        children: <Widget>[
      Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/RentPage.png"),
      fit: BoxFit.cover,
    ),
    ),
    ), Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Rent"),
          LivingArrangementsWidget(),
          RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: FoodPage(userSelection:widget.userSelection)));
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

class LivingArrangementsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          //color: Colors.grey,
          child: Center(
            child: Column(
                children: <Widget>[
                  Center(
                    heightFactor: 2,
                    child:Padding(
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
                      onPressed: (){},
                      icon: FlutterLogo(),
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
                      onPressed: (){},
                      icon: FlutterLogo(),
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
                ]
            ),
          )

      ),
    );
  }
}