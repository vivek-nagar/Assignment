import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OTP Verification",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        SizedBox(height: 15),
        RichText(
          text:
              TextSpan(style: Theme.of(context).textTheme.bodyText2, children: [
            TextSpan(text: "Enter the OTP sent to "),
            TextSpan(
              text: " +91 730351851",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
