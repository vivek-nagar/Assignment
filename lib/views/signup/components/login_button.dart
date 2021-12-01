

import 'package:elssa/views/login/login_screen.dart';
import 'package:flutter/material.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("ALREADY HAVE AN ACCOUNT?"),
        TextButton(
          onPressed: () {  Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen(),
          ));},
          child: Text("LOG IN"),
        )
      ],
    );
  }
}
