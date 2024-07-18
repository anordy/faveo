import 'package:faveo/bloc/auth/login/cubit/login_cubit.dart';
import 'package:faveo/cubits/signup/signup_cubit.dart';
import 'package:faveo/pages/Auth/login_screen.dart';
import 'package:faveo/pages/home_page.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nb_utils/nb_utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  void initState() {
    super.initState();
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _phone;
  PhoneNumber number = PhoneNumber(isoCode: 'TZ');

  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _phonenumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmationController =
      TextEditingController();
  TextEditingController _emailController = TextEditingController();

  bool _obsecureText = true;

  final Map<String, dynamic> _authData = {
    'first_name': '',
    'last_name': '',
    'email': '',
    'phone_number': '',
    'password': '',
    'password_confirmation': '',
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
            padding: const EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
            child: Form(
              key: _formKey,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Text(
                  "Sign up",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: Utils.displayHeight(context) * 0.06,
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
                        controller: _firstnameController,
                        decoration: InputDecoration(
                          hintText: "First name",
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
                          _authData['first_name'] = _firstnameController.text;
                          print("firstname: " + _firstnameController.text);
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
                  height: Utils.displayHeight(context) * 0.02,
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
                        controller: _lastnameController,
                        decoration: InputDecoration(
                          hintText: "Last name",
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
                          _authData['last_name'] = _lastnameController.text;
                          print("lastname: " + _lastnameController.text);
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
                  height: Utils.displayHeight(context) * 0.02,
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
                          labelText: "Email",
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
                          _authData['email'] = _emailController.text;
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
                  height: Utils.displayHeight(context) * 0.02,
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
                        controller: _phonenumberController,
                        decoration: InputDecoration(
                          labelText: "Phone number",
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
                          _authData['phone_number'] = _phonenumberController.text;
                          print("Phonenumber: " + _phonenumberController.text);
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
                          _authData['password'] = _passwordController.text;
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
                SizedBox(
                  height: Utils.displayHeight(context) * 0.03,
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
                        controller: _passwordConfirmationController,
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
                          labelText: "Confirm Password",
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
                          _authData['password_confirmation'] = _passwordConfirmationController.text;
                          print("password confirm: " +
                              _passwordConfirmationController.text);
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
                  height: 30.0,
                ),
                BlocConsumer<SignupCubit, SignupState>(
                  builder: (context, state) {
                    return state.maybeWhen(loading: () {
                      return Loader(
                        size: 50,
                      );
                    }, orElse: () {
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: MaterialButton(
                            height: 50,
                            minWidth: Utils.displayWidth(context),
                            color: AppColor.button,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                BlocProvider.of<SignupCubit>(context)
                                    .signup(_authData);
                              }
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ));
                    });
                  },
                  listener: (context, state) {
                    state.maybeWhen(
                        success: (user) {
                          // SessionTimer.startTimer(context);

                          const LoginScreen().launch(context);
                        },
                        failure: (errorMessage) {
                          Fluttertoast.showToast(
                            msg: errorMessage,
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        },
                        orElse: () {});
                  },
                ),
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
                          "Already have Account?",
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
                                          const LoginScreen()));
                            },
                            child: Text(
                              "Signin",
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
