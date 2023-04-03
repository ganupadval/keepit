import 'package:flutter/material.dart';
import 'package:keepit/pages/home.dart';
import 'package:keepit/pages/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/signin': (context) => SignIn(),
        '/home': ((context) => Home()),
      },
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 5 seconds and navigate to the next screen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/signin');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(170, 95, 228, 0.20888),
      body: Center(
      child: Container(
        width: 300, // set the width to 300
        child: Text(
          'One-stop solution to all your Warranty Tracking',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18,
            
          ),
        ),
      ),
      ),
    );
  }
}
