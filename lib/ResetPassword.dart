import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resetPassword extends StatefulWidget {
  @override
  resetPasswordState createState() => resetPasswordState();
}

class resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: [
            Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: AppBar(
                  title: Text("AppBar"),
                ))
          ],
        ),
    );
  }
}
