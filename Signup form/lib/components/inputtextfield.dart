import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_app/components/inputtextfield.dart';

// ignore: must_be_immutable
class InputTextField extends StatelessWidget {
  String? hintText;

  Icon? icon;
  //controller? Controller;
  

  InputTextField(
    this.hintText,
    this.icon,
    //this.Controller,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        //controller: Controller,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: icon,
            fillColor: Color.fromARGB(255, 224, 135, 108),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "error";
            } else {
              return null;
            }
          }),
    );
  }
}
