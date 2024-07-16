import 'package:faveo/card/ticket_card.dart';
import 'package:faveo/cubits/tickets/ticket_list_cubit.dart';
import 'package:faveo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class MyTicketsPage extends StatelessWidget {
  const MyTicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Tickets",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            height: Utils.displayHeight(context),
            child: BlocBuilder<TicketListCubit, TicketListState>(
              bloc: TicketListCubit()..fetchTicketLists(),
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Loader();
                  },
                  success: (tickets) {
                    return Container(
                      color: Colors.white,
                        height: Utils.displayHeight(context),
                        child: ListView.builder(
                            //  controller: _ordersController,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: tickets.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0,
                                      right: 15.0,
                                      bottom: 0.0,
                                      top: 5),
                                  child: InkWell(
                                      onTap: () {},
                                      child: TicketCard(
                                        ticketModel: tickets[index],
                                      )));
                            }));
                  },
                  failure: (errorMessage) {
                    print(errorMessage);
                    return Container(
                        height: Utils.displayHeight(context),
                        child: Text(errorMessage));
                    // Fluttertoast.showToast(
                    //   msg: errorMessage,
                    //   toastLength: Toast.LENGTH_LONG,
                    //   gravity: ToastGravity.BOTTOM,
                    //   timeInSecForIosWeb: 5,
                    //   backgroundColor: Colors.red,
                    //   textColor: Colors.white,
                    //   fontSize: 16.0,
                    // );
                  },
                );
              },
            )),
      ),
    );
  }
}
