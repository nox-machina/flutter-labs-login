import 'package:flutter/material.dart';

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
        body: Text('DEMO TEXT'),
      ),
    );
  }
}
