import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:first/register/country.dart';
import 'package:first/register/custom_checkbox.dart';
import 'package:first/register/custum_textfield.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class FormUi extends StatefulWidget {
  @override
  State<FormUi> createState() => _FormUiState();
}

class _FormUiState extends State<FormUi> {
  // TextEditingController? Namecontroller;

  String? validatorName(String v) {
    if (v.length < 3) {
      return 'name must contain at least 3 letters';
    }
  }

  String? validatorEmail(String v) {
    if (!isEmail(v)) {
      return 'invalid email syntax';
    }
  }

  String? validatorPhone(String v) {
    if (v.length < 9 || v.length > 10) {
      return 'phone number must contain either 9 or 10 numbers';
    }
  }

  String? checkBoxValidator(bool? x) {
    if (!(x!)) {
      return 'you have to accept our conditions first';
    }
  }

  getName() {
    String name;
    name = Namecontroller.text;
  }

  GlobalKey<FormState> formKey = GlobalKey();

  Country? selectedCountry;

  String? selectedCity;

  TextEditingController Namecontroller = TextEditingController();

  TextEditingController Emailcontroller = TextEditingController();

  TextEditingController Phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page '),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: CustumTextField(
                    textInputType: TextInputType.name,
                    titel: 'Name',
                    controller: Namecontroller,
                    validtor: validatorName,
                    suffix: Icon(Icons.person),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: CustumTextField(
                    textInputType: TextInputType.emailAddress,
                    titel: 'Email',
                    controller: Emailcontroller,
                    validtor: validatorEmail,
                    suffix: Icon(Icons.email),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: CustumTextField(
                    textInputType: TextInputType.phone,
                    titel: 'Phone',
                    controller: Phonecontroller,
                    validtor: validatorPhone,
                    suffix: CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'ps',
                      favorite: ['+39', 'FR'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: DropdownButton<Country>(
                    isExpanded: true,
                    underline: SizedBox(),
                    value: selectedCountry,
                    items: countries.map((e) {
                      return DropdownMenuItem<Country>(
                        value: e,
                        child: Text(e.name),
                      );
                    }).toList(),
                    onChanged: (v) {
                      selectedCountry = v;
                      selectedCity = v!.cities.first;
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(
                        15,
                      )),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: SizedBox(),
                    value: selectedCity,
                    items: selectedCountry?.cities.map((e) {
                      return DropdownMenuItem<String>(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (v) {
                      selectedCity = v;
                      setState(() {});
                    },
                  ),
                ),
                CustomCheckbox(
                  validator: checkBoxValidator,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      fixedSize: Size(250, 50)),
                  child: Text('Register'),
                  onPressed: () {
                    formKey.currentState!.validate();
                    setState(() {});
                  },
                ),
                Text(Namecontroller.text),
                Text(Emailcontroller.text),
                Text(Phonecontroller.text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
