import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katching_app/EightEventPage.dart';

class SevenEventPage extends StatefulWidget {
  final int moneyScore;
  final int funScore;

  SevenEventPage(this.moneyScore, this.funScore);

  @override
  _SevenEventPageState createState() => _SevenEventPageState();
}

class _SevenEventPageState extends State<SevenEventPage> {
  @override
  Widget build(BuildContext context) {
      int moneyScore = widget.moneyScore;
      int funScore = widget.funScore;

    return Scaffold(
           body: new Stack(
          children: <Widget>[
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("lib/images/EventPageSeven.png"),
      fit: BoxFit.cover,
    ),
    ),
    ),Center(
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
          //Event: birthday($200)
            moneyScore = moneyScore + 200;
          
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EightEventPage(moneyScore, funScore)));
        }
      )
        )
    )
    );
  }  
}


