import 'package:faveo/model/ticket_model.dart';
import 'package:faveo/model/unassigned_model.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UnassignedCard extends StatelessWidget {
  final Unassigned unassignedModel;
  const UnassignedCard({super.key, required this.unassignedModel});

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
                backgroundImage: NetworkImage(unassignedModel.profilePic)),
          ),
          title: Text('${unassignedModel.firstName} ${unassignedModel.lastName}',
            style: const TextStyle(fontSize: 16),
          ),
          subtitle: Text(DateFormat('MMMM dd, yyyy').format(DateTime.parse(unassignedModel.createdAt))),
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
