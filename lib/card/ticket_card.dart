import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage("assets/icons/anordy.jpeg")),
          ),
          title: Text(
            "Gozbert Stanslaus Fulla",
            style: TextStyle(fontSize: 16),
          ),
          subtitle: Text("July 6,2024 06:01 PM"),
          trailing: Icon(Icons.arrow_drop_up_sharp),
        ),
        Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
      ],
    );
  }
}
