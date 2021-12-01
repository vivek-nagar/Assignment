import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({Key key}) : super(key: key);

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        // key: controller.formKey,

        child: Container(
      child: TextFormField(
        // controller: controller.phoneNumber,
        keyboardType: TextInputType.phone,
        autofillHints: [
          AutofillHints.telephoneNumberNational,
        ],
        validator: validateMobile,
        decoration: InputDecoration(
            fillColor: Colors.black12,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: Colors.white, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            prefixIcon: Icon(
              Icons.phone_iphone,
              color: Colors.grey,
            ),
            hintText: "Enter Mobile Number"),
      ),
    ));
  }
}
