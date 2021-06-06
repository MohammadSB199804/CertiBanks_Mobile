import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_3/Sign_Up.dart';
import 'package:form_3/ResetPassword.dart';
// import 'package:sign_button/constants.dart';
// import 'package:sign_button/create_button.dart';
// import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool passVisability = true;
  Color buttonColor =  Color.fromRGBO(217, 74, 156, 10);
  Color bla = Colors.black54;
  Color wi = Colors.white;
  Color blk = Colors.black;
  // Color blk = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: wi,
      child: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/purple.jpg"
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: 160 ,
            ),
            Card(
              color: wi,
              elevation: 20.0,
              margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 100.0),
              child: ListView(
                  padding:
                  EdgeInsets.only(top: 20.0, left: 20.0, right: 18.0, bottom: 5.0),
                  children: <Widget>[
                    Text("Welcome Back !",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: blk),textAlign: TextAlign.center),
                    SizedBox(height: 30),
                    Text(
                        "Sign in with your email and password or ${'\n'} continus with social media",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                             color:  bla),
                        textAlign: TextAlign.center),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 15,color: bla),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: bla,width: 1.0),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: bla),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 15,color: bla),
                          suffixIcon: IconButton(
                            icon: Icon(passVisability ? Icons.visibility_off : Icons.visibility),
                            color: bla,
                            onPressed: (){
                              setState(() {
                                passVisability = !passVisability;
                              });
                            },
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bla,width: 1.0),
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText : passVisability,
                        style: TextStyle(color: bla),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: Text("Forget you'r passwod ?" , style: TextStyle(color: bla,fontSize: 12)),
                        onTap: () => {
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => resetPassword()))
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                        onLongPress: null,
                        child:
                        Text("Continue", style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                               buttonColor )
                        ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                         Padding(child : Text("Dont have an account ?" , style: TextStyle(color: bla,fontSize: 12)) , padding: EdgeInsets.only(right: 8.0),) ,
                          InkWell(
                            child: Text("Sign Up" , style: TextStyle(color: bla,fontSize: 12.5,decoration: TextDecoration.underline)),
                            onTap: () => {
                              Navigator.push(context,
                                  new MaterialPageRoute(builder: (context) => SignUp())
                              ),
                            },
                        ),
                      ],
                    ),
                    // SignInButton(
                    //     buttonType: ButtonType.google,
                    //     buttonSize: ButtonSize.large, // small(default), medium, large
                    //     onPressed: () {
                    //       print('click');
                    //     })
                  ]
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                title: Text("CertiBanks" , style: TextStyle( fontFamily: 'Pacifico', fontSize: 25),),
                centerTitle: true,
                actions: [
                  IconButton(icon: Icon(Icons.nightlight_round), onPressed: (){
                    setState(() {
                      bla = bla == Colors.black54 ? Colors.white : Colors.black54;
                      wi = wi == Colors.white ? Colors.black54 : Colors.white;
                      blk = blk == Colors.black ? Colors.white : Colors.black;
                      // blk = blk == Colors.black ? Colors.white : Colors.black;
                    });
                  }, color:Colors.white),
                  IconButton(icon: Icon(Icons.menu), onPressed: (){
                    setState(() {
                        null;
                    });
                  }, color:Colors.white),
                ],
                leading: IconButton(
                  icon: Icon(Icons.arrow_back,color: Colors.white),
                  onPressed: (){
                    setState(() {
                      null;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
