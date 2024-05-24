import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ksdf extends StatefulWidget {
  const ksdf({super.key});

  @override
  State<ksdf> createState() => _ksdfState();
}

class _ksdfState extends State<ksdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [    IntlPhoneField(
                    decoration: InputDecoration(
                        hintText: "Phone Number",
                        labelText: "Phone Number",
                        helperText: "Type Your Phone Number",
                        // border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.phone,
                          color: Color(0xFF9E9E9E),
                        ),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        )),
                  ),],
      ),
    );
  }
}