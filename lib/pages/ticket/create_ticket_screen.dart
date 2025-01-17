import 'package:faveo/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/colors.dart';

class CreateTicketScreen extends StatefulWidget {
  const CreateTicketScreen({super.key});

  @override
  State<CreateTicketScreen> createState() => _CreateTicketScreenState();
}

class _CreateTicketScreenState extends State<CreateTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left)),
        title: const Text("Create Ticket"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Priority",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.white),
                child: DropdownButtonFormField(
                  hint: Text('Select'),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "Low",
                      child: Text(
                        "Low",
                      ),
                    ),
                    DropdownMenuItem<String>(
                        value: "High",
                        child: Text(
                          "High",
                        )),
                    DropdownMenuItem<String>(
                        value: "Normal",
                        child: Text(
                          "Normal",
                        )),
                  ],
                  onChanged: (value) async {
                    setState(() {
                      //  gender = value;
                    });
                  },
                  // value: gender,
                  // validator: (value) => value == null
                  //   ? 'Please fill in your gender': null,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  elevation: 2,
                  // borderRadius: BorderRadius.circular(10),
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  isDense: true,
                  iconSize: 12.0,
                  iconEnabledColor: Colors.black,
                  icon: Icon(FontAwesomeIcons.chevronDown),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Location",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.white),
                child: DropdownButtonFormField(
                  hint: Text('Select'),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "Dodoma",
                      child: Text(
                        "Dodoma",
                      ),
                    ),
                    DropdownMenuItem<String>(
                        value: "Morogoro",
                        child: Text(
                          "Morogoro",
                        )),
                  ],
                  onChanged: (value) async {
                    setState(() {
                      //  gender = value;
                    });
                  },
                  // value: gender,
                  // validator: (value) => value == null
                  //   ? 'Please fill in your gender': null,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  elevation: 2,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  isDense: true,
                  iconSize: 12.0,
                  iconEnabledColor: Colors.black,
                  icon: Icon(FontAwesomeIcons.chevronDown),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Source",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.white),
                child: DropdownButtonFormField(
                  hint: Text('Select'),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "WEB",
                      child: Text(
                        "web",
                      ),
                    ),
                    DropdownMenuItem<String>(
                        value: "Email",
                        child: Text(
                          "Email",
                        )),
                         DropdownMenuItem<String>(
                        value: "Agent",
                        child: Text(
                          "Agent",
                        )),
                         DropdownMenuItem<String>(
                        value: "Facebook",
                        child: Text(
                          "Facebook",
                        )),
                         DropdownMenuItem<String>(
                        value: "Twitter",
                        child: Text(
                          "Twitter",
                        )),
                         DropdownMenuItem<String>(
                        value: "Call",
                        child: Text(
                          "Call",
                        )),
                         DropdownMenuItem<String>(
                        value: "Chat",
                        child: Text(
                          "Chat",
                        )),
                  ],
                  onChanged: (value) async {
                    setState(() {
                      //  gender = value;
                    });
                  },
                  // value: gender,
                  // validator: (value) => value == null
                  //   ? 'Please fill in your gender': null,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  elevation: 2,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  isDense: true,
                  iconSize: 12.0,
                  iconEnabledColor: Colors.black,
                  icon: Icon(FontAwesomeIcons.chevronDown),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Help Topic",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.white),
                child: DropdownButtonFormField(
                  hint: Text('Select'),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "UCS Support",
                      child: Text(
                        "UCS Support",
                      ),
                    ),
                    DropdownMenuItem<String>(
                        value: "DHIS2 Support",
                        child: Text(
                          "DHIS2 Support",
                        )),
                  ],
                  onChanged: (value) async {
                    setState(() {
                      //  gender = value;
                    });
                  },
                  // value: gender,
                  // validator: (value) => value == null
                  //   ? 'Please fill in your gender': null,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  elevation: 2,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  isDense: true,
                  iconSize: 12.0,
                  iconEnabledColor: Colors.black,
                  icon: Icon(FontAwesomeIcons.chevronDown),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Department",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.white),
                child: DropdownButtonFormField(
                  hint: Text('Select'),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "UCS Support",
                      child: Text(
                        "UCS Support",
                      ),
                    ),
                    DropdownMenuItem<String>(
                        value: "DHIS2 Support",
                        child: Text(
                          "DHIS2 Support",
                        )),
                  ],
                  onChanged: (value) async {
                    setState(() {
                      //  gender = value;
                    });
                  },
                  // value: gender,
                  // validator: (value) => value == null
                  //   ? 'Please fill in your gender': null,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  elevation: 2,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  isDense: true,
                  iconSize: 12.0,
                  iconEnabledColor: Colors.black,
                  icon: Icon(FontAwesomeIcons.chevronDown),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Type",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.white),
                child: DropdownButtonFormField(
                  hint: Text('Select'),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "create-ticket",
                      child: Text(
                        "Create Ticket",
                      ),
                    ),
                    DropdownMenuItem<String>(
                        value: "create-ticket-agent",
                        child: Text(
                          "Create Ticket Agent",
                        )),
                        DropdownMenuItem<String>(
                        value: "close-ticket",
                        child: Text(
                          "Close Ticket",
                        )),

                        DropdownMenuItem<String>(
                        value: "reset-password",
                        child: Text(
                          "Reset Password",
                        )),
                  ],
                  onChanged: (value) async {
                    setState(() {
                      //  gender = value;
                    });
                  },
                  // value: gender,
                  // validator: (value) => value == null
                  //   ? 'Please fill in your gender': null,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  elevation: 2,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  isDense: true,
                  iconSize: 12.0,
                  iconEnabledColor: Colors.black,
                  icon: Icon(FontAwesomeIcons.chevronDown),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Description",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter a value"),
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                    height: 50,
                    minWidth: Utils.displayWidth(context),
                    color: AppColor.button,
                    onPressed: () {
                      Fluttertoast.showToast(
                            msg: "something went wrong",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 5,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const CreateTicketScreen()));
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
