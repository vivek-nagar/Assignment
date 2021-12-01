import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF4267B2),
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
                Icons.facebook,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Text(
                'CONTINUE WITH FACEBOOK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
              
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
