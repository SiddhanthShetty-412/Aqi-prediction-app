import 'package:flutter/material.dart';
import 'package:aqi_app/LoginPage.dart';
import 'package:aqi_app/SignupPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AQI App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'AQI App',
            style: TextStyle(
                color: Colors.white
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Container(
        color: Colors.grey[900], // Background color
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align left
          children: [
            // Row for Login and Signup Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Align icons to the right
              children: [
                IconButton(
                  icon: Icon(Icons.login, color: Colors.blue),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.app_registration, color: Colors.blue),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),

            // AQI Analysis Title
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'AQI Analysis',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.amberAccent,
                ),
              ),
            ),

            // AQI Input Section
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Month',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add logic to fetch AQI data
                    },
                    child: Text('Get AQI Data'),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30), // Extra space between AQI and Visualization sections

            // Graphical Visualization Section
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Graphical Visualization of AQI',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.amberAccent,
                ),
              ),
            ),

            // Visualization Input Section
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Enter Month',
                        labelStyle: TextStyle(
                           color: Colors.white,
                        ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add logic to fetch visualization data
                    },
                    child: Text('Get Visualization'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
