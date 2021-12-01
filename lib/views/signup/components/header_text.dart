import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Your Home Services Expert",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24)),
        SizedBox(height: 5),
        Text(
          "Continue With Phone Number",
          style: TextStyle(color: Colors.black54),
        )
      ],
    );
  }
}
