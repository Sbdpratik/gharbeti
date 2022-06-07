import 'dart:convert';
import 'dart:developer';
import 'dart:math';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = false;
  bool _loading = false;
  bool value = false;
  String val = "";
  String? _email, _password;
  final _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldkey,
        body: Form(
          key: _formkey,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, const Color(0x43c6ac)])),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  _showtitle(),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 250,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, const Color(0x43c6ac)]),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 3,
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(100).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _emailbox(),
                        _passwordbox(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  _loginbutton(),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Don\'t have an account?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 25, 22, 69),
                          fontSize: 15)),
                  SizedBox(
                    height: 20,
                  ),
                  _signupbutton(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector _signupbutton() {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/signup');
      },
      child: Container(
        height: 53,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white60),
          borderRadius: BorderRadius.circular(30).copyWith(
              bottomRight: Radius.circular(0), topLeft: Radius.circular(0)),
        ),
        child: Text('SignUp',
            style: TextStyle(
                color: Color.fromARGB(255, 25, 22, 69),
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  void _submit() {
    final form = _formkey.currentState;
    if (form!.validate()) {
      form.save();
      _loginuser();
    } else {
      print("Invalid Form");
    }
  }

  _loginuser() async {
    setState(() {
      _loading = true;
      Future.delayed(Duration(seconds: 2));
    });
    http.Response response = await http
        .post(Uri.parse('http://10.0.2.2:1337/api/auth/local/'), body: {
      "identifier": _email,
      "password": _password,
    });
    final responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      setState(() {
        _loading = false;
      });
      _showSnackBar();
      _redirectuser();
    } else {
      setState(() {
        _loading = false;
      });
      print(responseData['error']['status']);
    }
  }

  void _redirectuser() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/rooms');
    });
  }

  void _showSnackBar() {
    final snackbar = SnackBar(
        content: Text(
      'Login Successfully',
      style: TextStyle(color: Colors.green),
    ));
    _scaffoldkey.currentState!.showSnackBar(snackbar);
    _formkey.currentState!.reset();
  }

  GestureDetector _loginbutton() {
    return GestureDetector(
      onTap: () {
        _submit();
      },
      child: _loading == true
          ? CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation(Colors.green),
            )
          : Container(
              height: 53,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.black12.withOpacity(.2),
                        offset: Offset(2, 2))
                  ],
                  borderRadius: BorderRadius.circular(30).copyWith(
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0)),
                  gradient: LinearGradient(
                      colors: [Colors.white, const Color(0x43c6ac)])),
              child: Text('Login',
                  style: TextStyle(
                      color: Color.fromARGB(255, 25, 22, 69),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
    );
  }

  Padding _passwordbox() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
      child: TextFormField(
        onSaved: (val) => _password = val!,
        validator: (val) =>
            (val!.length) < 6 ? "Minimum password length is 6" : null,
        style:
            TextStyle(color: Color.fromARGB(255, 25, 22, 69), fontSize: 14.5),
        obscureText: isPasswordVisible ? false : true,
        decoration: InputDecoration(
            prefixIconConstraints: BoxConstraints(minWidth: 45),
            prefixIcon: Icon(
              Icons.lock,
              color: Color.fromARGB(255, 25, 22, 69),
              size: 22,
            ),
            suffixIconConstraints: BoxConstraints(minWidth: 45, maxWidth: 46),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              child: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Color.fromARGB(255, 25, 22, 69),
                size: 22,
              ),
            ),
            border: InputBorder.none,
            hintText: 'Enter Password',
            hintStyle: TextStyle(
                color: Color.fromARGB(255, 25, 22, 69), fontSize: 14.5),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30).copyWith(
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0)),
                borderSide: BorderSide(color: Colors.white38)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30).copyWith(
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0)),
                borderSide:
                    BorderSide(color: Color.fromARGB(225, 231, 255, 255)))),
      ),
    );
  }

  Padding _emailbox() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
      child: TextFormField(
        onSaved: (val) => _email = val!,
        validator: (val) => !val!.contains("@") ? "Invalid Email" : null,
        style:
            TextStyle(color: Color.fromARGB(255, 25, 22, 69), fontSize: 14.5),
        decoration: InputDecoration(
            prefixIconConstraints: BoxConstraints(minWidth: 45),
            prefixIcon: Icon(
              Icons.email,
              color: Color.fromARGB(255, 25, 22, 69),
              size: 22,
            ),
            border: InputBorder.none,
            hintText: 'Enter Email',
            hintStyle: TextStyle(color: Color.fromARGB(255, 25, 22, 69)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30).copyWith(
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0)),
                borderSide: BorderSide(color: Colors.white38)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30).copyWith(
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0)),
                borderSide:
                    BorderSide(color: Color.fromARGB(225, 231, 255, 255)))),
      ),
    );
  }

  Container _showtitle() {
    return Container(
      height: 120,
      width: 210,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.white, const Color(0x43c6ac)]),
          boxShadow: [
            BoxShadow(blurRadius: 4, spreadRadius: 3, color: Colors.black12)
          ],
          borderRadius: BorderRadius.circular(200).copyWith(
              bottomRight: Radius.circular(0), topLeft: Radius.circular(0))),
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Color(0x0043C6AC)]),
            boxShadow: [
              BoxShadow(blurRadius: 4, spreadRadius: 3, color: Colors.black12)
            ],
            borderRadius: BorderRadius.circular(50).copyWith(
                bottomRight: Radius.circular(0), topLeft: Radius.circular(0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ghar',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(1, 1),
                        blurRadius: 0)
                  ]),
            ),
            Text(
              'Beti',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 25, 22, 69),
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(1, 1),
                        blurRadius: 0)
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
