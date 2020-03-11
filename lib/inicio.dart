//import 'dart:js';

import 'package:flutter/material.dart';
import 'new_session.dart';
import 'devices.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _perfil(context));
  }
}

Widget _perfil(c) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 48, 64, 87),
    body: ListView(
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
      children: [
        Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Latest performance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all((Radius.circular(10))),
                      color: Color.fromARGB(255, 226, 129, 77),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FlutterLogo(
                              size: 60,
                            ),
                            Text(
                              'Back \n activation',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.orange[1000],
                          indent: 1,
                          endIndent: 1,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FlutterLogo(
                              size: 60,
                            ),
                            Text(
                              'Bicep \n activation',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.orange[1000],
                          indent: 1,
                          endIndent: 1,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FlutterLogo(
                              size: 60,
                            ),
                            Text(
                              'Back \n safety',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            height: 200,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all((Radius.circular(10))),
              color: Color.fromARGB(255, 218, 94, 90),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color.fromARGB(255, 218, 94, 90),
                    blurRadius: 3.5,
                    offset: Offset(0.0, 0.5))
              ],
            ),
          ),
        ),
        Container(
          height: 25,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    c, MaterialPageRoute(builder: (context) => NewSession()));
              },
              child: Container(
                height: 200,
                width: 150,
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Text(
                      ' New\n session',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.grey[200],
                          size: 70,
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 185, 3),
                  borderRadius: BorderRadius.all((Radius.circular(10))),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(255, 73, 94, 122),
                        blurRadius: 5,
                        offset: Offset(0.0, 5.0)),
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    c, MaterialPageRoute(builder: (context) => BluetoothConnectionScreen()));
              },
              child: Container(
                height: 200,
                width: 150,
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Text(
                      ' Training\n log',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.date_range,
                          color: Colors.grey[200],
                          size: 70,
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 185, 3),
                  borderRadius: BorderRadius.all((Radius.circular(10))),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(255, 73, 94, 122),
                        blurRadius: 5,
                        offset: Offset(0.0, 5.0)),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 25,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                  Navigator.push(
                      c, MaterialPageRoute(builder: (context) => BluetoothConnectionScreen()));
                },
                          child: Container(
                height: 200,
                width: 150,
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Text(
                      ' Device',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.bluetooth,
                          color: Colors.white,
                          size: 70,
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 185, 3),
                  borderRadius: BorderRadius.all((Radius.circular(10))),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color.fromARGB(255, 73, 94, 122),
                        blurRadius: 5,
                        offset: Offset(0.0, 5.0)),
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
            ),
            Container(
              height: 200,
              width: 150,
              padding: EdgeInsets.all(5),
              child: Stack(
                children: [
                  Text(
                    ' Settings',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.settings,
                        color: Colors.grey[200],
                        size: 70,
                      )),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 253, 185, 3),
                borderRadius: BorderRadius.all((Radius.circular(10))),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color.fromARGB(255, 73, 94, 122),
                      blurRadius: 5,
                      offset: Offset(0.0, 5.0)),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.local_drink), title: Text('Beers')),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo), title: Text('New Beer')),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), title: Text('Favourites')),
      ],
      fixedColor: Color.fromARGB(255, 226, 129, 77),
      backgroundColor: Colors.grey[900],
      unselectedItemColor: Colors.white,
    ),
  );
}
