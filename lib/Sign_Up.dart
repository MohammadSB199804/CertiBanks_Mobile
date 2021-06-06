import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  Color wi = Colors.white;
  Color bla = Colors.black54;
  Color buttonColor = Color.fromRGBO(217, 74, 156, 10);

  final _signUpForm = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';

  void trySubmitForm() {
    final isValid = _signUpForm.currentState.validate();
    if (isValid) {
      print('Everything looks good!');
      print(_userEmail);
      print(_userName);
      print(_password);
      print(_confirmPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: wi,
      child: Material(
        child: InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/purple.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 160,
              ),
              Card(
                elevation: 20.0,
                margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 100.0),
                child: ListView(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 18.0, bottom: 5.0),
                  children: <Widget>[
                    Form(
                      key: _signUpForm,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "User Name",
                              labelStyle: TextStyle(fontSize: 15, color: bla),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: bla, width: 1.0),
                              ),
                            ),
                            // ignore: missing_return
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return "Plese Enter your user name";
                              }
                            },
                            onChanged: (value) => _userName = value,
                            style: TextStyle(color: bla),
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(fontSize: 15, color: bla),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: bla, width: 1.0),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: bla),
                            // ignore: missing_return
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return "This is required feild";
                              }
                            },
                            onChanged: (value) => _userEmail = value,
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(fontSize: 15, color: bla),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: bla, width: 1.0),
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(color: bla),
                            obscureText: true,
                            // ignore: missing_return
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return "This field is required";
                              }
                              if (value.trim().length < 8) {
                                return 'Password must be at least 8 characters in length';
                              }
                              return null;
                            },
                            //Validator,
                            onChanged: (value) => _password = value,
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Re-Password",
                              labelStyle: TextStyle(fontSize: 15, color: bla),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: bla, width: 1.0),
                              ),
                            ),
                            obscureText: true,
                            style: TextStyle(color: bla),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'This field is required';
                              }

                              if (value != _password) {
                                return 'Confimation password does not match the entered password';
                              }

                              return null;
                            },
                            onChanged: (value) => _confirmPassword = value,
                          ),
                          ElevatedButton(
                            onLongPress: null,
                            child: Text("Sign Up",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        buttonColor)),
                            onPressed: trySubmitForm,
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                // bottom: 0.0,
                child: AppBar(
                  title: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 25, fontFamily: 'Arial'),
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  actions: [
                    IconButton(
                        icon: Icon(
                          Icons.nightlight_round,
                          color: wi,
                        ),
                        onPressed: null)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
