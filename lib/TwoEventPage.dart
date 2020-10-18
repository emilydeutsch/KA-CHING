import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katching_app/ThreeEventPage.dart';

import 'LosePage.dart';

class TwoEventPage extends StatefulWidget {
  final int moneyScore;
  final int funScore;

  TwoEventPage(this.moneyScore, this.funScore);

  @override
  _TwoEventPageState createState() => _TwoEventPageState();
}

class _TwoEventPageState extends State<TwoEventPage> {
  @override
  Widget build(BuildContext context) {
      int moneyScore = widget.moneyScore;
      int funScore = widget.funScore;

    return Scaffold(
      body:new Stack(
          children: <Widget>[
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("lib/images/EventPageTwo.png"),
      fit: BoxFit.cover,
    ),
    ),
    ), Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 45
            ),
            StatusBar(moneyScore, funScore),
            SizedBox(
              height: 350
            ),
            EventButton(moneyScore, funScore)
          ],
        )
      )
    ],
      ),
    );
  }
}

class StatusBar extends StatelessWidget{
  final int moneyScore;
  final int funScore;

  StatusBar(this.moneyScore, this.funScore);
  
  @override
  Widget build(BuildContext context){
  return(
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
         Chip(
            backgroundColor: Colors.lightGreen,
            label: Text('Money Score: ' + moneyScore.toString()),
            labelStyle: 
              TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            labelPadding: EdgeInsets.all(2.0),
          ),
        SizedBox(
          height: 15.0
        ),
        Chip(
            backgroundColor: Colors.orange,
            label: Text('Fun Score: ' + funScore.toString()),
            labelStyle: 
              TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            labelPadding: EdgeInsets.all(2.0),
      )
      ]
    )
  );
  }
}

class EventButton extends StatelessWidget{
  int moneyScore;
  int funScore;

  EventButton(this.moneyScore, this.funScore);

  @override
  Widget build(BuildContext context){
    return(
    Container(
      child:
        ButtonTheme(
          minWidth: 200,
        height: 50,
          child:FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.black)
        ),
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Continue',
          style: TextStyle(
            fontSize: 20.0 
          )
        ),
        onPressed: (){
          //Event: lost wallet($200)
            moneyScore = moneyScore - 200;
            if(moneyScore<=0 || funScore<=0){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LosePage(moneyScore<=0)));
            }
            else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ThreeEventPage(moneyScore, funScore)));
            }
        }
      )
        )
    )
    );
  }  
}


