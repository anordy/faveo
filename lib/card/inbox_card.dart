import 'package:faveo/model/inbox_model.dart';
import 'package:faveo/model/ticket_model.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';

class InboxCard extends StatelessWidget {
  final Ticket inboxModel;
  const InboxCard({super.key, required this.inboxModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            leading:   CircleAvatar(
              radius: 10,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                  radius: 19,
                  backgroundImage: NetworkImage(this.inboxModel.profilePic)),
            ),
            title:   Text(
              '${inboxModel.firstName} .' '. ${inboxModel.lastName}',
              style: const TextStyle(fontSize: 16),
            ),
            trailing: OutlinedButton(
                style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.red))),
                onPressed: () {},
                child: const Text(
                  'Overdue',
                  style: TextStyle(color: Colors.red),
                ))),
          Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              const Icon(Icons.sports_basketball),
              const SizedBox(
                width: 10,
              ),
              Text(inboxModel.helpTopicName,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              inboxModel.ticketNumber,
              style: TextStyle(
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
                inboxModel.createdAt,
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
                    color: Colors.grey[400],
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
                      text:  const TextSpan(
                        text: "tempo",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 35,
                width: Utils.displayWidth(context) * 0.28,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
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
                      text: const TextSpan(
                        text: 'Android',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 35,
                width: Utils.displayWidth(context) * 0.28,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      size: 10,
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
        const Divider(
          height: 5,
          color: Colors.grey,
        )
      ],
    );
  }
}
