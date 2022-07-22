import 'package:flutter/material.dart';

class CustumTextField extends StatelessWidget {
  String? titel;
  Function validtor;
  TextEditingController? controller;
  TextInputType? textInputType;
  Widget? suffix;
  CustumTextField(
      {required this.titel,
      required this.validtor,
      required this.controller,
      this.suffix,
      this.textInputType});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      keyboardType: textInputType,
      validator: (x) => validtor(x),
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: suffix,
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          labelText: titel,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20))),
    );
  }
}
