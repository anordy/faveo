import 'package:faveo/model/ticket_model.dart';
import 'package:faveo/model/unassigned_model.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';

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
            style: TextStyle(fontSize: 16),
          ),
          subtitle: Text(unassignedModel.createdAt),
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
