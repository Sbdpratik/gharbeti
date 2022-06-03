import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordVisible = false;
  bool isCPasswordVisible = false;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                Container(
                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white, const Color(0x43c6ac)]),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 3,
                            color: Colors.black12)
                      ],
                      borderRadius: BorderRadius.circular(200).copyWith(
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0))),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Color(0x0043C6AC)]),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 3,
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(50).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0))),
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
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 400,
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30)
                            .copyWith(bottom: 10),
                        child: TextField(
                          style: TextStyle(
                              color: Color.fromARGB(255, 25, 22, 69),
                              fontSize: 14.5),
                          decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 45),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 25, 22, 69),
                                size: 22,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Username',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 25, 22, 69)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white38)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(225, 231, 255, 255)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30)
                            .copyWith(bottom: 10),
                        child: TextField(
                          style: TextStyle(
                              color: Color.fromARGB(255, 25, 22, 69),
                              fontSize: 14.5),
                          decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 45),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 25, 22, 69),
                                size: 22,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 25, 22, 69)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white38)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(225, 231, 255, 255)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30)
                            .copyWith(bottom: 10),
                        child: TextField(
                          style: TextStyle(
                              color: Color.fromARGB(255, 25, 22, 69),
                              fontSize: 14.5),
                          obscureText: isPasswordVisible ? false : true,
                          decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 45),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 25, 22, 69),
                                size: 22,
                              ),
                              suffixIconConstraints:
                                  BoxConstraints(minWidth: 45, maxWidth: 46),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color.fromARGB(255, 25, 22, 69),
                                  size: 22,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 25, 22, 69),
                                  fontSize: 14.5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white38)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(225, 231, 255, 255)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30)
                            .copyWith(bottom: 10),
                        child: TextField(
                          style: TextStyle(
                              color: Color.fromARGB(255, 25, 22, 69),
                              fontSize: 14.5),
                          obscureText: isCPasswordVisible ? false : true,
                          decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 45),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 25, 22, 69),
                                size: 22,
                              ),
                              suffixIconConstraints:
                                  BoxConstraints(minWidth: 45, maxWidth: 46),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isCPasswordVisible = !isCPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  isCPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color.fromARGB(255, 25, 22, 69),
                                  size: 22,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 25, 22, 69),
                                  fontSize: 14.5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide:
                                      BorderSide(color: Colors.white38)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                      .copyWith(
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(225, 231, 255, 255)))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 30),
                          horizontalTitleGap: 0.0,
                          onTap: () {
                            setState(() {
                              this.value = !value;
                            });
                          },
                          leading: Checkbox(
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value!;
                              });
                            },
                          ),
                          title: Text('Agreed Terms and conditions.',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 25, 22, 69),
                                  fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
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
                    child: Text('SignUp',
                        style: TextStyle(
                            color: Color.fromARGB(255, 25, 22, 69),
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Already have an account?',
                    style: TextStyle(
                        color: Color.fromARGB(255, 25, 22, 69), fontSize: 15)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 53,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.circular(30).copyWith(
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0)),
                  ),
                  child: Text('Login',
                      style: TextStyle(
                          color: Color.fromARGB(255, 25, 22, 69),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
