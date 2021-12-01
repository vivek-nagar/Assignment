import 'package:elssa/views/location/location_screen.dart';
import 'package:elssa/views/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({Key key}) : super(key: key);

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
            builder: (BuildContext context) => LocationScreen(),
          ));
        },
        child: Text(
          "VARIY & PROCEED",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
