import 'package:flutter/material.dart';
import 'package:keepit/pages/signUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(170, 95, 228, 0.20888),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     widget.title,
      //     style: TextStyle(color: Color.fromRGBO(48, 6, 80, 1)),
      //   ),
      // ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(23.0),
          child: Column(
            children: [
              Text(
                'SIGN IN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Your email address',
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Your Password',
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Signing in...')));
                     Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Color.fromRGBO(48, 6, 80, 1)),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text('Don\'t have an account? Sign up'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // void _showDialog(BuildContext context, String message) {
  //   showDialog<void>(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text(message),
  //       actions: [
  //         TextButton(
  //         child: const Text('OK'),
  //          onPressed: () => Navigator.pushReplacementNamed(context, '/'),
  //         ),
  //       ],
  //     ),
  //   );
  }

