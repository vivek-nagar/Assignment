import 'package:elssa/views/signup/signup_screen.dart.dart';
import 'package:flutter/material.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("DON'T HAVE AN ACCOUNT?"),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => SignUpScreen(),
            ));
          },
          child: Text("SIGN UP"),
        )
      ],
    );
  }
}
