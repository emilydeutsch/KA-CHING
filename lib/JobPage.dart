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
    return Scaffold(body: new Stack(
        children: <Widget>[
    Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/JobPage.png"),
      fit: BoxFit.cover,
    ),
    ),
    ),Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
          //Text("Job"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:50.0),
                child: Text(
                  'What do you want to be when you grow up?',
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
          //       widget.userSelection[0] = dropdownValue;
          //
          //     },
          //     items: <String>['Select a Job', 'Teacher', 'Doctor', 'Artist']
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
                child: Text('Select a Job'),
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
                          widget.userSelection[0] = 'Doctor';
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: CityPage(userSelection: widget.userSelection))
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  width: 50,
                                  child: Image.asset("lib/images/doctor.png")
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Doctor',
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
                          widget.userSelection[0] = 'Artist';
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: CityPage(userSelection: widget.userSelection))
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  width: 50,
                                  child: Image.asset("lib/images/artist.png")
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Artist',
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
                          widget.userSelection[0] = 'Teacher';
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: CityPage(userSelection: widget.userSelection))
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
                                'Teacher',
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
                          widget.userSelection[0] = '';
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: CityPage(userSelection: widget.userSelection))
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  width: 50,
                                  child: Image.asset("lib/images/astronaut.png")
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Astronaut',
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
