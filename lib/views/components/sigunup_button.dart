import 'package:elssa/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      child: ElevatedButton(
        
        // onPressed: controller.isLoading.value ? null : () => controller.login(),
        onPressed: () {},
        child: Text(
          "SIGN UP",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
