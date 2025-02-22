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
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AQI App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          /// ✅ Background Image Covers Full Screen
          Positioned.fill(
            child: Image.asset(
              'assets/rm222-mind-20.jpg',
              fit: BoxFit.cover,
            ),
          ),

          /// ✅ Dark Overlay for Better Readability
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5), // Adjust transparency if needed
            ),
          ),

          /// ✅ Main Content (Scrollable)
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width, // Full Width
              height: MediaQuery.of(context).size.height, // Full Height
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Login & Signup Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.login, color: Colors.white),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.app_registration, color: Colors.white),
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
                        fontSize: 22.0,
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
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Enter Month',
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
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

                  SizedBox(height: 30),

                  // Graphical Visualization Section
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Graphical Visualization of AQI',
                      style: TextStyle(
                        fontSize: 22.0,
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
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Enter Month',
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
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
          ),
        ],
      ),
    );
  }
}
