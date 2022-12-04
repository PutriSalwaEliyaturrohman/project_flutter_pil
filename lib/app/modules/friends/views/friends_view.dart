import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_flutter_pil/app/utils/widget/header.dart';
import 'package:project_flutter_pil/app/utils/widget/myfriends.dart';
import 'package:project_flutter_pil/app/utils/widget/sideBar.dart';
import 'package:unicons/unicons.dart';

import '../../../utils/style/AppColors.dart';
import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
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
              foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
              ),
              ),
              ],
              ),
           ),
              // content / isi page / screen
              Expanded(
                child: Container(
                   padding: !context.isPhone 
                    ?const EdgeInsets.all(50) :
                     const EdgeInsets.all(20),
                    margin: !context.isPhone 
                    ? const EdgeInsets.all(10) 
                    : const EdgeInsets.all(0),
                    decoration:BoxDecoration(
                       color: Colors.white,
                      borderRadius: !context.isPhone 
                    ? BorderRadius.circular(50) 
                    : BorderRadius.circular(30),
                    ) ,
              child: 
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('People You May Know', 
              style: 
              TextStyle(fontSize: 30, 
              color: AppColors.primaryText,),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  clipBehavior: Clip.antiAlias,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack( children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            50),
                          child: const Image(
                          image: NetworkImage( 'https://images.pexels.com/photos/852793/pexels-photo-852793.jpeg' ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 50,
                      child: Text('Putri Salwa Eliyaturrohman', 
                      style: TextStyle(color: Colors.white),
                      ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          height: 36,
                          width: 36,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),)
                            ),
                          child: Icon(UniconsLine.plus_circle),
                          ),
                        ),
                        ),
                      ],
                      ),
                    );
                  }
                ),
              ),
              MyFriends(),
              ],),
                  )
                  ),

          ],),
          ),
      ],)
    );
  }
}
