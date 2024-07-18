import 'package:faveo/model/inbox_model.dart';
import 'package:faveo/model/ticket_model.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';

class InboxCard extends StatelessWidget {
  final Inbox inboxModel;
  const InboxCard({super.key, required this.inboxModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            leading: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                  radius: 19,
                  backgroundImage: NetworkImage('${inboxModel.profilePic}')),
            ),
            title: Text(
              '${inboxModel.firstName} ${inboxModel.lastName}',
              style: const TextStyle(fontSize: 16),
            ),
            trailing: OutlinedButton(
                style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.red))),
                onPressed: () {},
                child: Text(
                  '${inboxModel.ticketStatusName}',
                  style: const TextStyle(color: Colors.red),
                ))),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 10.0),
          child: Row(
            children: [
              const Icon(Icons.sports_basketball),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: '${inboxModel.title}',
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              '${this.inboxModel.ticketNumber}',
              style: const TextStyle(
                fontSize: 14,
              ),
            )),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text(
                '${inboxModel.overdueDate}',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.alarm),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: Utils.displayWidth(context) * 0.28,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    RichText(
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        text: "${inboxModel.priotityName}",
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 35,
                width: Utils.displayWidth(context) * 0.28,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    RichText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: '${inboxModel.slaPlanName}',
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 35,
                width: Utils.displayWidth(context) * 0.28,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person_2_outlined,
                      size: 15,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    RichText(
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      text: const TextSpan(
                        text: 'Unassigned',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
         Divider(
          height: 5,
          color: Colors.grey[200],
        )
      ],
    );
  }
}
