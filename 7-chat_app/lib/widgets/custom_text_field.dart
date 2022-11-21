import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({this.hintText, this.onChanged});
  Function(String)? onChanged;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    //! changed from TextField to TextFormField for validation purpose (register_page.dart) --> CustomBottun --> onTap
    return TextFormField(
      //! setup your own conditions to validate data coming from user inpute
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is can\'t be empty';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white70,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
      ),
    );
  }
}
