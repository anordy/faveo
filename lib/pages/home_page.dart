import 'package:faveo/card/ticket_card.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:faveo/widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin implements TickerProvider {
  ScrollController _ordersController = new ScrollController();
  late TabController _tabController;
  List<Widget> list = [
    const Tab(
      text: "Normal",
    ),
    const Tab(
      text: "Support",
    ),
    const Tab(
      text: "Open",
    ),
  ];
  final statusList = ['Pending', 'Paid'];

  bool changeLanguage = false;
  String currentLocale = "";
  @override
  void initState() {
    super.initState();
        _tabController = TabController(length: list.length, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
        backgroundColor: Colors.white,
         appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("My Tickets",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),),
      drawer: DrawerWidget(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverStickyHeader(
                header: Container(
                  height: Utils.displayHeight(context) * 0.1,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0,bottom: 10),
                    child: Column(
                      children: [
                        
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: TabBar(
                              controller: _tabController,
                              indicator: BoxDecoration(
                                  color: AppColor.base,
                                  borderRadius: BorderRadius.circular(50)),
                              // indicatorColor: AppColor.base,
                              labelColor: AppColor.button,
                              unselectedLabelColor: const Color(0xFF1F212C),
                              tabs: list,
                              onTap: (index) {
                                // Tab index when user select it, it start from zero
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                    height: Utils.displayHeight(context),
                    color: Colors.transparent,
                    child: TabBarView(controller: _tabController, children: [
                      normalTicket(),
                      supportTicket(),
                      openTicket()
                    ]),
                  ),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }

// normal ticket
  Widget normalTicket() {
    return Container(
        height: Utils.displayHeight(context),
        // color: Colors.green,
        child: ListView.builder(
            //  controller: _ordersController,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 0.0, top: 5),
                  child: InkWell(onTap: () {}, child: const TicketCard()));
            }));
  }

// support ticket
  Widget supportTicket() {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        CircleAvatar(
          backgroundColor: AppColor.bgScreen,
          child: Column(
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
    ));
  }

// open ticket
  Widget openTicket() {
    return Container(
        height: Utils.displayHeight(context),
        // color: Colors.green,
        child: ListView.builder(
            //  controller: _ordersController,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 10.0, top: 10),
                  child: InkWell(onTap: () {}, child: const TicketCard()));
            }));
  }


@override
  void dispose() {
    _tabController.dispose(); // Dispose _tabController when no longer needed
    super.dispose();
  }
  // dismiss widget
  // Widget makeDismisible({@required Widget child}) => GestureDetector(
  //       behavior: HitTestBehavior.opaque,
  //       onTap: () => Navigator.of(context).pop(),
  //       child: GestureDetector(
  //         onTap: () {},
  //         child: child,
  //       ),
  //     );

  // filter bottom sheet
  // Widget filterOrderStatus() {
  //   return makeDismisible(
  //     child: DraggableScrollableSheet(
  //       initialChildSize: 0.3,
  //       minChildSize: 0.3,
  //       maxChildSize: 0.3,
  //       builder: (_, controller) => Container(
  //         decoration: const BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
  //         child: Padding(
  //           padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 10),
  //           child: ListView(
  //             controller: controller,
  //             // crossAxisAlignment: CrossAxisAlignment.start,
  //             // mainAxisSize: MainAxisSize.min,
  //             children: [
  //               const SizedBox(height: 25.0),
  //               const Text(
  //                 "Filter by Status",
  //                 style: TextStyle(color: Color(0xFF40403F)),
  //               ),
  //               const SizedBox(
  //                 height: 15,
  //               ),
  //               Container(
  //                   padding:
  //                       const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
  //                   width: Utils.displayWidth(context),
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(10),
  //                       border: Border.all(color: const Color(0xFFC7D3DD))),
  //                   child: DropdownButtonHideUnderline(
  //                       child: ButtonTheme(
  //                           alignedDropdown: true,
  //                           child: DropdownButton<String>(
  //                             icon: Icon(FontAwesomeIcons.chevronDown,
  //                                 color: Colors.black, size: 16),
  //                             value: _status,
  //                             hint: const Text("Filter By  Status"),
  //                             isExpanded: true,
  //                             onChanged: (String newValue) {
  //                               setState(() {
  //                                 _status = newValue;
  //                                 if (_status == "Pending") {
  //                                   orderProvider.fetchOrders("PENDING");
  //                                   Navigator.of(context).pop();
  //                                 } else if (_status == "Paid") {
  //                                   orderProvider.fetchOrders("PAID");
  //                                   Navigator.of(context).pop();
  //                                 } else {
  //                                   orderProvider.fetchOrders('PENDING');
  //                                   Navigator.of(context).pop();
  //                                 }
  //                                 // if(_status = )
  //                                 // print(_status);
  //                               });
  //                             },
  //                             items: statusList.map((item) {
  //                               return new DropdownMenuItem(
  //                                 child: new Text(item),
  //                                 value: item,
  //                               );
  //                             }).toList(),
  //                             style: const TextStyle(
  //                                 color: Colors.black45, fontSize: 16),
  //                           )))),
  //               const SizedBox(height: 25.0),
  //               Center(
  //                 child: MaterialButton(
  //                   shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(60.0)),
  //                   color: Theme.of(context).primaryColor,
  //                   height: 50,
  //                   minWidth: Utils.displayWidth(context) * 0.4,
  //                   onPressed: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                   child: Text(
  //                     'Apply'.toUpperCase(),
  //                     style: const TextStyle(color: Colors.white, fontSize: 18),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }



}