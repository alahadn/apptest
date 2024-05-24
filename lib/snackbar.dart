import 'dart:developer';

import 'package:flutter/material.dart';

class snackbar extends StatefulWidget {
  const snackbar({super.key});

  @override
  State<snackbar> createState() => _snackbarState();
}

class _snackbarState extends State<snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: const Duration(seconds: 3),
                  behavior: SnackBarBehavior.floating,
                  content: const Text(
                    "error",
                    textAlign: TextAlign.center,
                  ),
                  action: SnackBarAction(
                      label: 'next',
                      onPressed: () {
                        log("error");
                      }),
                ));
              },
              child: Text("snackbar")),
        ),
      ),
    );
  }
}
