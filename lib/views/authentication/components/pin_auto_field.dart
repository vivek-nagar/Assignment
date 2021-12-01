import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class PinAutoField extends StatelessWidget {
  const PinAutoField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        child: Theme(
          data: ThemeData(
            inputDecorationTheme:
                InputDecorationTheme(fillColor: Theme.of(context).canvasColor),
          ),
          child: OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 40,
            style: TextStyle(fontSize: 25),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          // child: PinFieldAutoFill(
          //   controller: controller.otp,
          //   codeLength: 6,
          //   decoration: BoxLooseDecoration(
          //     bgColorBuilder: FixedColorBuilder(Colors.grey[300]),
          //     strokeColorBuilder: FixedColorBuilder(Colors.grey[300]),
          //     gapSpace: 10,
          //   ),
          // ),
        ),
      ),
    );
  }
}
