import 'package:faveo/card/ticket_card.dart';
import 'package:faveo/cubits/tickets/ticket_list_cubit.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class MyTrashPage extends StatelessWidget {
  const MyTrashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Trash",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: Utils.displayHeight(context),
          width: Utils.displayWidth(context),
          child: Column(
            children: [
              const SizedBox(
            height: 40,
          ),
          CircleAvatar(
            backgroundColor: AppColor.bgScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.storefront_outlined,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Wow, Such Empty",
                  style: TextStyle(fontSize: 10, color: AppColor.text),
                ),
              ],
            ),
            radius: 50,
          ),
            ],
          ),
        ),),
    );
  }
}
