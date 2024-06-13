import 'dart:ui';

import 'package:faveo/pages/ticket/create_ticket_screen.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: InkWell(
            child: const ListTile(
              leading: CircleAvatar(
                radius: 31,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/icons/anordy.jpeg")),
              ),
              title: Text(
                "Anord John",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text("Admin"),
            ),
            onTap: () {
               Navigator.of(context).push(MaterialPageRoute(
                 builder: (BuildContext context) =>  const CreateTicketScreen()));
            },
          )),
          ListTile(
            leading: const Icon(Icons.airplane_ticket),
            title: Row(
              children: [
                InkWell(
                  onTap: () {
                    
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
            child: Text("Tickets",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
          ),
           const ListTile(
            leading: Icon(Icons.mail),
            title: Text(
              "Inbox",
              style: TextStyle(fontSize: 16),
            ),
            trailing:  Card(color: Colors.green, child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("22",style: TextStyle(color: Colors.white),),
            ),)
          ),
           const ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "My Tickets",
              style: TextStyle(fontSize: 16),
            ),
            trailing:  Card(color: Colors.green, child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("50",style: TextStyle(color: Colors.white),),
            ),)
          ),
        const ListTile(
            leading: Icon(Icons.list),
            title: Text(
              "Unassigned",
              style: TextStyle(fontSize: 16),
            ),
            trailing:  Card(color: Colors.green, child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("0",style: TextStyle(color: Colors.white),),
            ),)
          ),
           const ListTile(
            leading: Icon(Icons.calendar_view_month_outlined),
            title: Text(
              "Overdue",
              style: TextStyle(fontSize: 16),
            ),
            trailing:  Card(color: Colors.green, child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("35",style: TextStyle(color: Colors.white),),
            ),)
          ),
           const ListTile(
            leading: Icon(Icons.delete),
            title: Text(
              "Trash",
              style: TextStyle(fontSize: 16),
            ),
            trailing:  Card(color: Colors.green, child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("13",style: TextStyle(color: Colors.white),),
            ),)
          ),
           const ListTile(
            leading: Icon(Icons.picture_as_pdf_outlined),
            title: Text(
              "Excell Sheet",
              style: TextStyle(fontSize: 16),
            ),
            trailing:  Card(color: Colors.green, child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("10",style: TextStyle(color: Colors.white),),
            ),)
          ),
          //  const Padding(
          //   padding: EdgeInsets.only(left: 0.0, right: 0.0),
          //   child: Divider(
          //     color: Colors.grey,
          //   ),
          // ),
          // const Padding(
          //   padding: EdgeInsets.only(left: 15.0),
          //   child: Text("Departments",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
          // ),
          
        ],
      ),
    );
  }
}