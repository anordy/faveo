import 'package:faveo/pages/Auth/signup_screen.dart';
import 'package:faveo/pages/ticket/create_ticket_screen.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController _phoneController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _phone;
  PhoneNumber number = PhoneNumber(isoCode: 'TZ');

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  bool _obsecureText = true;

  final Map<String, dynamic> _authData = {
    'phone_number': '',
    'password': '',
  };

  void _toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  String code = "TZ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SingleChildScrollView(
        child: (Container(
          height: Utils.displayHeight(context),
          width: Utils.displayWidth(context),
          decoration: BoxDecoration(color: AppColor.base),
          child: Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 20.0, right: 20.0),
            child: Form(
              key: _formKey,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Text(
                  "Sign in",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: Utils.displayHeight(context) * 0.06,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Email",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                SizedBox(
                  height: Utils.displayHeight(context) * 0.01,
                ),
                Container(
                  height: 50,
                  width: Utils.displayWidth(context),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.black),
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: "Email/username",
                          labelStyle: const TextStyle(color: Colors.grey),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.border),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 3,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        onChanged: (value) {
                          print("Email: " + _emailController.text);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "* Required";
                          } else
                            return null;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Utils.displayHeight(context) * 0.03,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Password",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                SizedBox(
                  height: Utils.displayHeight(context) * 0.01,
                ),
                Container(
                  height: 50,
                  width: Utils.displayWidth(context),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.black),
                        obscureText: _obsecureText,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: () {
                                _toggle();
                                print(_obsecureText);
                              },
                              child: Icon(
                                _obsecureText
                                    ? CupertinoIcons.eye
                                    : CupertinoIcons.eye_slash,
                                color: Colors.black,
                              )),
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.grey),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.border),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 3,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        onChanged: (value) {
                          _authData['password'] = value;
                          print("password: " + _passwordController.text);
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an password';
                          } else if (value.length < 8) {
                            return 'Password must have 8 or more character long';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: const Color(0xff009FDA), fontSize: 12),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton(
                      height: 50,
                      minWidth: Utils.displayWidth(context),
                      color: AppColor.button,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CreateTicketScreen()));
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Center(
                        child: Text(
                          "Don't have Account?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Please",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()));
                            },
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.button),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        )),
      ),
    ));
  }
}
