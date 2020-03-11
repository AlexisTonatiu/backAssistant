import 'package:flutter/material.dart';
import 'simple_linechart.dart';




class TrainingSession extends StatefulWidget {

  
  @override
  _TrainingSessionState createState() => _TrainingSessionState();
}

class _TrainingSessionState extends State<TrainingSession> {
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        child: SimpleLineChart.withSampleData(),
      ),
    );
  }
}
