import 'package:flutter/material.dart';
import 'package:katching_app/CityPage.dart';
import 'package:katching_app/SlideTransition.dart';
// TODO: Make this less ugly
// ignore: must_be_immutable
class JobPage extends StatefulWidget {
  List<String> userSelection;
  JobPage({this.userSelection});
  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  String dropdownValue = 'Select a Job';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
          Text("Job"),
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
                widget.userSelection[0] = dropdownValue;

              },
              items: <String>['Select a Job', 'Teacher', 'Doctor', 'Artist']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          RaisedButton(
            child:Text("next"),
            onPressed: () {
              Navigator.push(context,
                  SlideRightRoute(page: CityPage(userSelection:widget.userSelection)));
            }
          ),
        ],
      ),
    ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class SelectOccupation extends StatefulWidget {
  SelectOccupation({Key key}) : super(key: key);

  @override
  _SelectOccupationState createState() => _SelectOccupationState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SelectOccupationState extends State<SelectOccupation> {
  String dropdownValue = 'Select a Job';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      color: Colors.lightBlue,
      child: DropdownButton(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 20,
        elevation: 0,
        style: TextStyle(
            color: Colors.deepPurple,
        ),
        dropdownColor: Colors.lightBlue[50],
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });

        },
        items: <String>['Select a Job', 'Teacher', 'Doctor', 'Artist']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
    /*
    DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 20,
      elevation: 0,
      style: TextStyle(color: Colors.deepPurple),
      dropdownColor: Colors.lightBlue[50],
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Select a Job', 'Teacher', 'Doctor', 'Artist']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ); */
  }
}
