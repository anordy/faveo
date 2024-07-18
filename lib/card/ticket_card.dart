import 'package:faveo/model/ticket_model.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketCard extends StatelessWidget {
  final Ticket ticketModel;
  const TicketCard({super.key, required this.ticketModel});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
                radius: 19,
                backgroundImage: NetworkImage(ticketModel.profilePic)),
          ),
          title: Text('${ticketModel.firstName} ${ticketModel.lastName}',
            style: const TextStyle(fontSize: 16),
          ),
          subtitle: Text(DateFormat('MMMM dd, yyyy').format(DateTime.parse(ticketModel.createdAt))),
          trailing: const Icon(Icons.arrow_drop_up_sharp),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: Divider(
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}
