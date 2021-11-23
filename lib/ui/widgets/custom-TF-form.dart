import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String label;
  TextEditingController controller;
  CustomTextfield(this.label, this.controller);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 49,
      padding: EdgeInsets.only(left: 10,top: 5),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Color(0xffE6E6E6)),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        controller: this.controller,
        decoration: InputDecoration(
            hintText: this.label,
            border:
            OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    );
  }
}