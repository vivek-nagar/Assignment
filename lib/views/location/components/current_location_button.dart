import 'package:elssa/constants.dart';
import 'package:elssa/views/authentication/authentication_screen.dart';
import 'package:elssa/views/home/home_screen.dart';
import 'package:elssa/views/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)),
          ),
          // onPressed: controller.isLoading.value ? null : () => controller.login(),
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen(),
            ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_searching_outlined),
              SizedBox(
                width: 10,
              ),
              Text(
                "Your current location",
                style: TextStyle(fontSize: 16),
              ),
            ],
          )),
    );
  }
}
