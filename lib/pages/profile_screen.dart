
import 'dart:io';

import 'package:faveo/pages/Auth/login_screen.dart';
import 'package:faveo/utils/colors.dart';
import 'package:faveo/utils/utils.dart';
import 'package:faveo/widget/redeem_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oktoast/oktoast.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key ?key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String phone = "255716121688";
  String adminPhone = "+255716121689";

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  // SharedPreferences sharedPreferences;
  bool changeLanguage = false;
  String currentLocale = "";

  bool isSwitched = false;
  @override
  void initState() {
    super.initState();
    initZendesk();
  }

  Future<void> initZendesk() async {
 }

  @override
  Widget build(BuildContext context) {
    // final _adsProvider = Provider.of<AdsProvider>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFE5E5E5),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: Utils.displayHeight(context),
                  width: Utils.displayWidth(context),
                  decoration: const BoxDecoration(
                    color: Color(0xFFE5E5E5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit,
                                color: AppColor.button,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Edit Profile",
                                  style: TextStyle(color: AppColor.button))
                            ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ), const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Anord John",
                                  style: TextStyle(
                                      color: Color(0xFF2D0C57),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                // SizedBox(width: 5),
                                // Icon(Icons.check,
                                //     size: 18, color: Color(0xFF2D0C57))
                              ],
                            ),
                      const SizedBox(
                        height: 10,
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 55,
                          width: Utils.displayWidth(context),
                          decoration: BoxDecoration(
                            color: AppColor.bgScreen,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ListTile(
                            leading: const CircleAvatar(
                                backgroundColor: Color(0xFFF3F3F3),
                                child: Icon(
                                  Icons.notifications,
                                  color: Color(0xFF525252),
                                )),
                            title: const Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF525252)),
                            ),
                            trailing: CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColor.base,
                                child: const Text(
                                  "5",
                                  style: TextStyle(color: Colors.white),
                                )),
                            onTap: () {
                              
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 55,
                            width: Utils.displayWidth(context),
                            decoration: BoxDecoration(
                              color: AppColor.bgScreen,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: Color(0xFFF3F3F3),
                                  child: Icon(
                                    Icons.language,
                                    color: Color(0xFF525252),
                                  )),
                              title: Text(
                                'change language',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF525252)),
                              ),
                            ),
                          ),
                        ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: InkWell(
                          onTap: () {
                           
                          },
                          child: Container(
                            height: 55,
                            width: Utils.displayWidth(context),
                            decoration: BoxDecoration(
                              color: AppColor.bgScreen,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: Color(0xFFF3F3F3),
                                  child: Icon(
                                    Icons.add_box_outlined,
                                    color: Color(0xFF525252),
                                  )),
                              title: Text(
                                "About",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF525252)),
                              ),
                              trailing: Icon(Icons.chevron_right),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          "Version 1.0.0",
                          style: TextStyle(color: Color(0xFF9B9C9B)),
                        ),
                      ) 
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  navigate(BuildContext context, Widget screen, bool nav) { 
  }

 

  // open whatsapp
  openwhatsapp() async {
  
  }

//  ===== open chat
  Future<void> openChat() async {
    
  }
}
