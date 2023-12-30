import 'package:ecom_admin_panel_web/utiles/colors.dart';
import 'package:ecom_admin_panel_web/utiles/constants.dart';
import 'package:ecom_admin_panel_web/views/home_screen.dart';
import 'package:ecom_admin_panel_web/views/responsive_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordValid(String password) => password.length == 8;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  bool passwordVisible = false;
  var isLoading = false;


//loginform validation
  void loginform() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ResponsiveWidget.isComputerScreen(context: context)
        // by using this widget we will able to display Web screen
            ? Row(
              children: [
                // by using this widget we will able to display logo page
                Expanded(
                    child: Container(
                  color: grey.withOpacity(0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 130),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // by using this widget we will able to display Logo
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(logoImage),
                              )),
                            ),
                            // by using this widget we will able to display Logo Text
                            Container(
                              margin: EdgeInsets.zero,
                              child: Text(
                                "ecom",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 40,
                                    fontFamily: abeatByKaiRegularFont),
                              ),
                            ),
                            // by using this widget we will able to display Logo sub text
                            Container(
                              margin: const EdgeInsets.only(bottom: 60),
                              child: Text(
                                "Collective",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 22,
                                    fontFamily: bacalistiesFont),
                              ),
                            ),
                            // by using this widget we will able to display parah
                            Text(
                              loginPageText,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: black.withOpacity(0.6),
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            // by using this widget we will able to display copyright icon
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.copyright,
                                size: 15,
                                color: black.withOpacity(0.4),
                              ),
                            ),
                            // by using this widget we will able to bottom text
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: Text(
                                "Ecomm Collective 2021.",
                                style: TextStyle(
                                    color: black.withOpacity(0.6),
                                    fontSize: 12),
                              ),
                            ),
                            // by using this widget we will able to bottom text
                            Container(
                              child: Text("All rights reserved",
                                  style: TextStyle(
                                      color: black.withOpacity(0.6),
                                      fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
                // by using this widget we will able to display login page
                Expanded(
                    child: Container(
                  color: white,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // by using this widget we will able to display administration text
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(bottom: 60),
                          child: Text(
                            "Administrator Login",
                            style: TextStyle(
                                color: black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: abeatByKaiRegularFont),
                          ),
                        ),
                        // by using this widget we will able to display Email text
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 182, bottom: 7),
                          child: Text(
                            "Email",
                            style: TextStyle(
                              color: black.withOpacity(0.6),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // by using this widget we will able to display Email textform field
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 180, right: 180, bottom: 25),
                          child: TextFormField(
                            controller: _emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              // Check if this field is empty
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }

                              // using regular expression
                              if (!RegExp(r'\S+@\S+\.\S+')
                                  .hasMatch(value)) {
                                return "Please enter a valid email address";
                              }

                              // the email is valid
                              return null;
                            },
                            decoration: const InputDecoration(
                              fillColor: white,
                              filled: true,
                              isDense: true,
                              isCollapsed: true,
                              contentPadding: EdgeInsets.all(14),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: grey, width: 1.0),
                              ),
                              enabled: true,
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: red, width: 1.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: red, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: grey, width: 1.0),
                              ),
                            ),
                          ),
                        ),
                        // by using this widget we will able to display Password text
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 182, bottom: 7),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              color: black.withOpacity(0.6),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // by using this widget we will able to display Email textform field
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 180, right: 180, bottom: 0),
                          child: TextFormField(
                            controller: _passwordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            maxLength: 8,
                            obscureText: passwordVisible,
                            validator: (password) {
                              if (isPasswordValid(password!)) {
                                return null;
                              } else {
                                return 'Enter a valid password';
                              }
                            },
                            decoration: InputDecoration(
                              fillColor: white,
                              isDense: true,
                              isCollapsed: true,
                              contentPadding: const EdgeInsets.all(12),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: grey, width: 1.0),
                              ),
                              enabled: true,
                              errorBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: grey, width: 1.0),
                              ),
                              focusedErrorBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: grey, width: 1.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: grey, width: 1.0),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible = !passwordVisible;
                                    },
                                  );
                                },
                              ),
                              filled: true,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                        // by using this widget we will able to display checkbox and forgot text button
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 180, right: 180, bottom: 30),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              // by using this widget we will able to display checkbox
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                        margin:
                                            const EdgeInsets.only(right: 4),
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                              if (_formKey
                                                  .currentState!
                                                  .validate()) {
                                                _formKey.currentState
                                                    ?.save();
                                                // use the email provided here
                                              }
                                            });
                                          },
                                        )),
                                    Container(
                                      child: Text(
                                        "Keep me signed in",
                                        style: TextStyle(
                                          color: black.withOpacity(0.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // by using this widget we will able to display Forgot text button
                              InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                    color: black.withOpacity(0.6),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // by using this widget we will able to display login button
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 35,
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                              ),
                              onPressed: () {
                                setState(() {
                                  loginform();
                                });
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            )
        // by using this widget we will able to display Mobile screen
            : Container(
                color: grey.withOpacity(0.3),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // by using this widget we will able to display logo image
                    Container(
                      margin: const EdgeInsets.only(top: 70, bottom: 10),
                      height: 75,
                      width: 75,
                      child: Image.asset(logoImage),
                    ),
                    // by using this widget we will able to display logo text
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "ecom",
                        style: TextStyle(
                            color: black,
                            fontSize: 27,
                            fontFamily: abeatByKaiRegularFont),
                      ),
                    ),
                    // by using this widget we will able to display logo bottom text
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Collective",
                        style: TextStyle(color: black, fontSize: 13,fontFamily: elegantFont),
                      ),
                    ),
                    // by using this widget we will able to display administator login text
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 25),
                      child: Text(
                        "Administrator Login",
                        style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: abeatByKaiRegularFont),
                      ),
                    ),
                    // by using this widget we will able to display Email text
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 85),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            color: black.withOpacity(0.6),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    // by using this widget we will able to display Email textForm field
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        left: 85,
                        right: 85,
                      ),
                      child: TextFormField(
                        controller: _emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          // Check if this field is empty
                          if (value != null || value!.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }

                          // the email is valid
                          return null;
                        },
                        decoration: const InputDecoration(
                          fillColor: white,
                          filled: true,
                          isDense: true,
                          isCollapsed: true,
                          contentPadding: EdgeInsets.all(14),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: grey, width: 1.0),
                            ),
                            enabled: true,
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: red, width: 1.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: red, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: grey, width: 1.0),
                            )
                        ),
                      ),
                    ),
                    // by using this widget we will able to display Password text
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 85),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: black.withOpacity(0.6),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    // by using this widget we will able to display Password textForm field
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 85, right: 85),
                      child: TextFormField(
                        controller: _passwordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        maxLength: 8,
                        obscureText: passwordVisible,
                        validator: (password) {
                          if (isPasswordValid(password!)) {
                            return null;
                          } else {
                            return 'Enter a valid password';
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: white,
                          isDense: true,
                          isCollapsed: true,
                          contentPadding: const EdgeInsets.all(12),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: grey, width: 1.0),
                          ),
                          enabled: true,
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: grey, width: 1.0),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: grey, width: 1.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: grey, width: 1.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),
                          filled: true,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    // by using this widget we will able to display checkbox and forgot text button
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 30, left: 80, right: 85),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // by using this widget we will able to display checkbox
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 4),
                                    child: Checkbox(
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value!;
                                          // if (formGlobalKey
                                          //     .currentState!
                                          //     .validate()) {
                                          //   formGlobalKey.currentState
                                          //       ?.save();
                                          //   // use the email provided here
                                          // }
                                        });
                                      },
                                    )),
                                Container(
                                  child: Text(
                                    "Keep me signed in",
                                    style: TextStyle(
                                      color: black.withOpacity(0.6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // by using this widget we will able to display forgot text button
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                color: black.withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // by using this widget we will able to display Login button
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 35,
                        width: 100,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                          ),
                          onPressed: () {
                            setState(() {});
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
