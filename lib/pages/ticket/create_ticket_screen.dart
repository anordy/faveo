import 'package:faveo/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTicketScreen extends StatelessWidget {
  const CreateTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Ticket"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "Priority",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(
                height: Utils.displayHeight(context) * 0.01,
              ),
              // DropDownTextField(
              //     // initialValue: "name4",
              //     listSpace: 20,
              //     listPadding: ListPadding(top: 20),
              //     enableSearch: true,
              //     validator: (value) {
              //       if (value == null) {
              //         return "Required field";
              //       } else {
              //         return null;
              //       }
              //     },
              //     dropDownList: const [
              //       DropDownValueModel(name: 'name1', value: "value1"),
              //       DropDownValueModel(name: 'name2', value: "value2"),
              //       DropDownValueModel(name: 'name3', value: "value3"),
              //       DropDownValueModel(name: 'name4', value: "value4"),
              //       DropDownValueModel(name: 'name5', value: "value5"),
              //       DropDownValueModel(name: 'name6', value: "value6"),
              //       DropDownValueModel(name: 'name7', value: "value7"),
              //       DropDownValueModel(name: 'name8', value: "value8"),
              //     ],
              //     listTextStyle: const TextStyle(color: Colors.red),
              //     dropDownItemCount: 8,

              //     onChanged: (val) {},
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
