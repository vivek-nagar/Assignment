import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          "Hey nice to meet you!",
          style: TextStyle(color: Colors.black54),
        ),
         SizedBox(height: 5),
        Text("See services around",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24)),
       
       
      ],
    );
  }
}
