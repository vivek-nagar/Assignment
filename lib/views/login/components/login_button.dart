import 'package:elssa/constants.dart';
import 'package:elssa/views/authentication/authentication_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
        ),
        // onPressed: controller.isLoading.value ? null : () => controller.login(),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => AuthenticationScreen(),
          ));
        },
        child: Text(
          "LOG IN",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
