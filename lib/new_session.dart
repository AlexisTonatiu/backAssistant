import 'package:backASSistant/training_Session.dart';
import 'package:flutter/material.dart';
import 'save_data.dart';

import 'animacion.dart';
import 'inicio.dart';

String trainingExercise;


class NewSession extends StatefulWidget {
  @override
  _NewSessionState createState() => _NewSessionState();
}

class _NewSessionState extends State<NewSession> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 218, 94, 90),
              Color.fromARGB(255, 226, 129, 77),
              Color.fromARGB(255, 253, 185, 3),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        BackButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstScreen()));
                          },
                          color: Colors.white,
                        ),
                        Text(
                          "New Training Session",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Montserrat"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 48, 64, 87),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    PickExercise(notifyParent: refresh),
                    Center(
                      child: _renderGif(),
                    ),
                    Container(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        updateTrainingData(trainingExercise);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TrainingSession()));
                      },
                      child: Container(
                        height: 140,
                        width: 400,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 218, 94, 90),
                              Color.fromARGB(255, 226, 129, 77),
                              Color.fromARGB(255, 253, 185, 3),
                            ]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Start', style: TextStyle(
                              fontSize: 60
                            ),),
                            Icon(Icons.play_arrow, color: Colors.white, size: 90),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PickExercise extends StatefulWidget {
  final Function() notifyParent;
  PickExercise({Key key, @required this.notifyParent}) : super(key: key);
  @override
  _PickExerciseState createState() => _PickExerciseState();
}

int _selectedExerciseIndex = 0;

class _PickExerciseState extends State<PickExercise> {
  String dropdownValue = 'Deadlift';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      isExpanded: true,
      icon: Icon(
        Icons.arrow_downward,
        color: Colors.white,
      ),
      iconSize: 30,
      elevation: 25,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String newValue) {
        dropdownValue = newValue;
        if (newValue == 'Deadlift') {
          setState(() {
            _selectedExerciseIndex = 1;
            trainingExercise = newValue;
          });
        } else if (newValue == 'Pull-Up') {
          setState(() {
            _selectedExerciseIndex = 2;
            trainingExercise = newValue;
            
          });
        } else if (newValue == 'Bent Over Row') {
          setState(() {
            _selectedExerciseIndex = 3;
                        trainingExercise = newValue;

          });
        } else {
          setState(() {
            _selectedExerciseIndex = 4;
                        trainingExercise = newValue;

          });
        }
        widget.notifyParent();
      },
      items: <String>['Deadlift', 'Pull-Up', 'Bent Over Row', 'Lat Pulldown']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

_renderGif() {
  if (_selectedExerciseIndex == 1) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/deadlift.gif',
        width: 350.0,
        height: 400.0,
        fit: BoxFit.fill,
      ),
    );
  } else if (_selectedExerciseIndex == 2) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/pull-up.gif',
        width: 350.0,
        height: 400.0,
        fit: BoxFit.fill,
      ),
    );
  } else if (_selectedExerciseIndex == 3) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/barbell-row.gif',
        width: 350.0,
        height: 400.0,
        fit: BoxFit.fill,
      ),
    );
  } else if (_selectedExerciseIndex == 4) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/lat-pulldown.gif',
        width: 350.0,
        height: 400.0,
        fit: BoxFit.fill,
      ),
    );
  } else
    return Container(
      height: 400.0,
      width: 350.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 6,
        ),
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'SELECCIONA\nUN\nEJERCICIO\nARRIBA',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Icon(
            Icons.arrow_upward,
            color: Colors.white,
            size: 40,
          ),
        ]),
      ),
    );
}
