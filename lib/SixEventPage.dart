import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katching_app/SevenEventPage.dart';

class SixEventPage extends StatefulWidget {
  final int moneyScore;
  final int funScore;

  SixEventPage(this.moneyScore, this.funScore);

  @override
  _SixEventPageState createState() => _SixEventPageState();
}

class _SixEventPageState extends State<SixEventPage> {
  @override
  Widget build(BuildContext context) {
      int moneyScore = widget.moneyScore;
      int funScore = widget.funScore;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
            ActionButtons(moneyScore, funScore)
          ],
        )
      )
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

class ActionButtons extends StatelessWidget{
  int moneyScore;
  int funScore;

  ActionButtons(this.moneyScore, this.funScore);

  @override
  Widget build(BuildContext context){
    return(
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.black)
        ),
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Yes',
          style: TextStyle(
            fontSize: 20.0 
          )
        ),
        onPressed: (){
          //Event: movies($30)
          if(moneyScore > 0){
            moneyScore = moneyScore - 30;
          }
          if(funScore < 100){
            funScore = funScore + 25;
          }
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SevenEventPage(moneyScore, funScore)));
          ///TODO: add logic if lost        
        }
      ),
        SizedBox(
          width: 25.0
        ),
        FlatButton(
        color: Colors.white,
        textColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(color: Colors.black)
        ),
        padding: EdgeInsets.all(8.0),
        child: Text(
          'No',
          style: TextStyle(
            fontSize: 20.0 
          )
        ),
        onPressed: (){
          //Event: movies($30)
          if(funScore > 0){
            funScore = funScore - 25;
          }
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SevenEventPage(moneyScore, funScore)));
          ///TODO: add logic if lost        
        }
      )
      
      ],
    )
    );
  }  
}


