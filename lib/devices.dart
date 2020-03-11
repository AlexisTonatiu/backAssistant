import 'package:flutter/material.dart';

import 'animacion.dart';
import 'inicio.dart';



class BluetoothConnectionScreen extends StatefulWidget {
  
  @override
  _BluetoothConnectionScreenState createState() =>
      _BluetoothConnectionScreenState();
}


class _BluetoothConnectionScreenState extends State<BluetoothConnectionScreen> {
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
                          "Bluetooth devices",
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
                      topRight: Radius.circular(50)),
                ),
    
              ),
            ),
          ],
        ),
      ),
    );
  }
}

