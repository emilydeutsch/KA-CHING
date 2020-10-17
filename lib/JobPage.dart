import 'package:flutter/material.dart';
import 'package:katching_app/CityPage.dart';
import 'package:katching_app/SlideTransition.dart';

// ignore: must_be_immutable
class JobPage extends StatefulWidget {
  List<String> userSelection;
  JobPage({this.userSelection});
  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
          Text("Job"),
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

