import 'package:flutter/material.dart';

class ResendButton extends StatelessWidget {
  const ResendButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("OTP not recived ? "),
        Text(
          "RESEND OTP",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
