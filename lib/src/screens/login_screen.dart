import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 25, 25, 15),
      child: Column(
        children: [
          Form(
              key: formKey,
              child: Column(
                children: [emailField(), passwordField()],
              )),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            margin: EdgeInsets.only(top: 20.0),
            child: submitButton(),
          )
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        icon: Icon(Icons.email_rounded),
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      validator: (String value) {
        var isValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value);
        if (!isValid) {
          return "Enter a valid email";
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        email = value;
      },
      autofocus: false,
    );
  }

  Widget passwordField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.vpn_key),
        labelText: 'Password',
        hintText: 'Password@123',
      ),
      validator: (String val) {
        if (val.length <= 5) {
          return "Whoa! Password must be at least 6 characters long.";
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        password = value;
      },
      autofocus: false,
    );
  }

  Widget submitButton() {
    return ElevatedButton.icon(
      label: Text('Send'),
      icon: Icon(Icons.send_rounded),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('$email, $password');
          formKey.currentState.reset();
        }
      },
    );
  }
}
