import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('LOGIN'),
          ),
        ),
        body: LoginScreen(),
      ),
    );
  }
}
