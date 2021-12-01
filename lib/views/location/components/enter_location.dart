import 'package:flutter/material.dart';

class LocationField extends StatelessWidget {
  const LocationField({Key key}) : super(key: key);

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
      alignment: Alignment.center,
      child: TextFormField(
        // controller: controller.phoneNumber,
        keyboardType: TextInputType.phone,
        autofillHints: [
          AutofillHints.telephoneNumberNational,
        ],
        validator: validateMobile,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 70),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            hintText: " Some Other location"),
      ),
    ));
  }
}
