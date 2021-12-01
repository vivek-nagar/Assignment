import 'package:flutter/material.dart';
import 'package:elssa/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class IllustrationImage extends StatelessWidget {
  const IllustrationImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.5,
      height: Get.width * 0.5,
      child: SvgPicture.asset(
        "assets/login_ill.svg",
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
