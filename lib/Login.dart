// ignore_for_file: non_constant_identifier_names, unnecessary_import, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, avoid_print, unused_import, file_names

import 'dart:developer';
import 'dart:ui';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login_page/signup.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final addressController = TextEditingController();

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final phoneController = TextEditingController();
  String selectValue = '';

  String? username;

  String? address;
  String? email;
  String? password;
  String? gender;
  String? language;
  String? country;

  String DropDrownValue = 'India';
  List<String> spinneritems = ['India', 'China', 'Russia', 'Sri Lanka'];

  Map<String, bool> values = {
    'English': false,
    'Hindi': false,
    'Telungu': false,
    'Tamil': false,
    'Malayalam': false,
  };

  var tmpList = [];
  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpList.add(key);
      }
    });
    log(tmpList.toString());
    tmpList.clear();
  }

  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text("Registration Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              key: _formfield,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "/images/user.png",
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: nameController,
                    onChanged: (value) {
                      setState(() {
                        username = value;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your name";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                      prefixIcon: Icon(Icons.face),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IntlPhoneField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      labelText: "Phone Number",
                      helperText: "Type Your Phone Number",
                      // border: OutlineInputBorder(),

                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    controller: addressController,
                    onChanged: (value) {
                      setState(() {
                        address = value;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Address";
                      }
                    },
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Address",
                      prefixIcon: Icon(Icons.face),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (value!.isEmpty) {
                        return "Enter Email";
                      } else if (!emailValid) {
                        return "Enter Valid Email";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    controller: passController,
                    obscureText: passToggle,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter password";
                      } else if (value.length < 6) {
                        return "Password Length Should be more than 6 characters";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "Male",
                          groupValue: selectValue,
                          onChanged: (value) {
                            setState(() {
                              selectValue = value.toString();
                            });
                          }),
                      Text(
                        "Male",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Radio(
                          value: "Female",
                          groupValue: selectValue,
                          onChanged: (value) {
                            setState(() {
                              selectValue = value.toString();
                            });
                          }),
                      Text("Female",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select your language:",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Container(
                      height: 170,
                      child: ListView(
                        children: values.keys.map((String key) {
                          return Row(
                            children: [
                              Checkbox(
                                  value: values[key],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      values[key] = value!;
                                    });
                                  }),
                              Text(
                                key,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              )
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select your Country:",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: DropdownButton<String>(
                      value: DropDrownValue,
                      elevation: 16,
                      onChanged: (String? data) {
                        setState(() {
                          DropDrownValue = data!;
                        });
                      },
                      items: spinneritems
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formfield.currentState!.validate()) {
                        print("success");
                        log("username =" + username.toString());

                        log("addres =" + address.toString());

                        log("email =" + email.toString());

                        log("password =" + password.toString());

                        log("gender =" + selectValue.toString());
                        log("phone =" + phoneController.text);
                        log("country =" + DropDrownValue);

                        getCheckboxItems();

                        phoneController.clear();

                        nameController.clear();

                        addressController.clear();

                        emailController.clear();

                        passController.clear();

                        // DropDrownValue.clear();

                        // getCheckboxItems();
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Login In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => aaa(),));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
