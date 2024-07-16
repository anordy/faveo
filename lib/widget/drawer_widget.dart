import 'dart:convert';
import 'dart:ui';

import 'package:faveo/bloc/auth/cubit/auth_cubit.dart';
import 'package:faveo/pages/Auth/login_screen.dart';
import 'package:faveo/pages/profile_screen.dart';
import 'package:faveo/pages/ticket/create_ticket_screen.dart';
import 'package:faveo/pages/ticket/inbox_page.dart';
import 'package:faveo/pages/ticket/mytickets_page.dart';
import 'package:faveo/pages/ticket/mytrash_page.dart';
import 'package:faveo/pages/ticket/unassigned_page.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class DrawerWidget extends StatefulWidget {
  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String? accessToken;
  String? username;
  bool? isAuth;
  Map<dynamic, dynamic> user = {};
  void fetchUserDetails() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = json.decode(prefs.getString('user')!);
    setState(() {
      user = userData;
    });
  }

  void initState() {
    super.initState();
    fetchUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: InkWell(
            child: ListTile(
              leading: CircleAvatar(
                radius: 31,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('${user['profile']}')),
              ),
              title: RichText(
                maxLines: 1,
                overflow: TextOverflow
                    .ellipsis, // Optional: Show ellipsis (...) if text overflows
                text: TextSpan(
                  style: const TextStyle(
                      fontSize: 18, color: Colors.black), // Default text style
                  children: [
                    TextSpan(
                      text: '${user['firstname']} ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold), // Style for firstname
                    ),
                    TextSpan(
                      text: user['lastname'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold), // Style for lastname
                    ),
                  ],
                ),
              ),
              subtitle: Text(user['username'],
                  style: const TextStyle(fontStyle: FontStyle.italic)),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ProfileScreen()));
            },
          )),
          ListTile(
            leading: const Icon(Icons.airplane_ticket),
            title: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CreateTicketScreen()));
                  },
                  child: const Text(
                    "Create Ticket",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Tickets",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InboxPage()));
            },
            child: const ListTile(
                leading: Icon(Icons.mail),
                title: Text(
                  "Inbox",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "22",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyTicketsPage()));
            },
            child: const ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "My Tickets",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "50",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UnAssignedPage()));
            },
            child: const ListTile(
                leading: Icon(Icons.list),
                title: Text(
                  "Unassigned",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
          const ListTile(
              leading: Icon(Icons.calendar_view_month_outlined),
              title: Text(
                "Overdue",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Card(
                color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "35",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyTrashPage()));
            },
            child: const ListTile(
                leading: Icon(Icons.delete),
                title: Text(
                  "Trash",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              
            },
            child: const ListTile(
                leading: Icon(Icons.picture_as_pdf_outlined),
                title: Text(
                  "Excell Sheet",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "10",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
           const Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: TextButton(child: const Text("LOGOUT",style: TextStyle(color: Colors.black),), onPressed: () {
                BlocProvider.of<AuthCubit>(context).logout();
              const LoginScreen().launch(context);
            },),
          ),
        ],
      ),
    );
  }
}
