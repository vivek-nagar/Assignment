import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        ),
        onPressed: () {},
        child: Container(
          height: 50,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.g_mobiledata,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(width: 20),
              Text(
                'CONTINUE WITH GOOGLE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
