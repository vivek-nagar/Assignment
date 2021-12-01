library authentication_view;

import 'package:elssa/views/authentication/components/header_text.dart';
import 'package:elssa/views/authentication/components/illustration_image.dart';
import 'package:elssa/views/authentication/components/pin_auto_field.dart';
import 'package:elssa/views/authentication/components/resend_button.dart';
import 'package:elssa/views/authentication/components/verification_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 1),
                Container(alignment: Alignment.topLeft, child: BackButton()),
                Spacer(flex: 1),
                IllustrationImage(),
                Spacer(flex: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: HeaderText(),
                ),
                Spacer(flex: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: PinAutoField(),
                ),
                Spacer(flex: 1),
                ResendButton(),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: VerificationButton(),
                ),
                Spacer(flex: 4),
              ],
            ),
          ),
        ]))
      ],
    ));
  }
}
