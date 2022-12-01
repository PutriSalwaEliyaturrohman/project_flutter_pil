import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_flutter_pil/app/utils/style/AppColors.dart';
import 'package:project_flutter_pil/app/utils/widget/header.dart';
import 'package:project_flutter_pil/app/utils/widget/sideBar.dart';
import 'package:unicons/unicons.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
       !context.isPhone ? Expanded(
          flex: 2,
          child: const SideBar(),
          )
          : const SizedBox(),
        Expanded(
          flex: 15,
          child: Column(
          children: [
           !context.isPhone ? 
           const header() 
           : Container( 
          padding: EdgeInsets.all(20),
           child: Row(
            children: [IconButton(
              onPressed: () {
                _drawerKey.currentState!.openDrawer();

              }, 
              icon: Icon(Icons.menu, 
              color: AppColors.primaryText,),
              ),
              const SizedBox(
            width: 15,
            ),
              Column(
            //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Task Management', 
            style: TextStyle(
              fontSize: 20, 
              color: AppColors.primaryText),
              ),
            Text('Manage task made easy with friends', 
            style: TextStyle(
              fontSize: 14, 
              color: AppColors.primaryText),
            ),
            ],
          ),
          const Spacer(),
          const Icon(UniconsLine.bell, 
          color: AppColors.primaryText, 
          size: 30,
          ),
          const SizedBox(
            width: 15,
            ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const CircleAvatar(
              backgroundColor: Colors.amber, radius: 25, 
              foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
              ),
              ),
              ],
              ),
           ),
              // content / isi page / screen
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(50),
                  margin: !context.isPhone 
                  ? const EdgeInsets.all(10) 
                  : const EdgeInsets.all(0),
                  decoration:BoxDecoration(
                     color: Colors.white,
                    borderRadius: !context.isPhone 
                  ? BorderRadius.circular(50) 
                  : BorderRadius.circular(30)) ,
                  )
                  ),

          ],),
          ),
      ],)
    );
  }
}