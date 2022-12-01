import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:project_flutter_pil/app/utils/style/AppColors.dart';
import 'package:project_flutter_pil/app/utils/widget/header.dart';
import 'package:project_flutter_pil/app/utils/widget/sideBar.dart';
import 'package:unicons/unicons.dart';



import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
 
 final GlobalKey<ScaffoldState> _drawerKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     const Text('My Task', 
                      style: TextStyle(
                      color: AppColors.primaryText, 
                      fontSize: 30,),
                      ),
                     const SizedBox( height: 20,
                     ),
                     // my Task
                      SizedBox(
                        height: 200,
                        child: ListView(
                          clipBehavior: Clip.antiAlias,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                        children: [
                          Container(
                            width: 400,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.cardBg,
                              ),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, radius: 20, 
                                      foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                               ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                  backgroundColor: Colors.amber, radius: 20, 
                                  foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                              const Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('100%',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  ),
                                ),),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('10/10 Task',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                ),
                                ),
                                ),
                                ),
                               const Text(
                                  'Pemrograman Mobile', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 20,),),
                                 const Text(
                                  'Deadline 2 hari lagi', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 15,),)
      
      
                              ],),
                          ),
                          
                          Container(
                            width: 400,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.cardBg,),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, radius: 20, 
                                      foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                               ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                  backgroundColor: Colors.amber, radius: 20, 
                                  foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                              const Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('100%',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  ),
                                ),),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('10/10 Task',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                ),
                                ),
                                ),
                                ),
                               const Text(
                                  'Pemrograman Mobile', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 20,),),
                                 const Text(
                                  'Deadline 2 hari lagi', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 15,),)
      
      
                              ],),
                          ),
                                           Container(
                            width: 400,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.cardBg,),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, radius: 20, 
                                      foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                               ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                  backgroundColor: Colors.amber, radius: 20, 
                                  foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                              const Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('100%',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  ),
                                ),),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('10/10 Task',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                ),
                                ),
                                ),
                                ),
                               const Text(
                                  'Pemrograman Mobile', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 20,),),
                                 const Text(
                                  'Deadline 2 hari lagi', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 15,),)
      
      
                              ],),
                          ),
                                           Container(
                            width: 400,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.cardBg,),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, radius: 20, 
                                      foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                               ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                  backgroundColor: Colors.amber, radius: 20, 
                                  foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                              const Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('100%',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  ),
                                ),),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('10/10 Task',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                ),
                                ),
                                ),
                                ),
                               const Text(
                                  'Pemrograman Mobile', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 20,),),
                                 const Text(
                                  'Deadline 2 hari lagi', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 15,),)
      
      
                              ],),
                          ),
                                           Container(
                            width: 400,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.cardBg,),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, radius: 20, 
                                      foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                               ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                  backgroundColor: Colors.amber, radius: 20, 
                                  foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                               ),),
                              const Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('100%',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  ),
                                ),),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg,
                                child: const Center(child: Text('10/10 Task',
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                ),
                                ),
                                ),
                                ),
                               const Text(
                                  'Pemrograman Mobile', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 20,),),
                                 const Text(
                                  'Deadline 2 hari lagi', 
                                style: TextStyle(
                                  color: AppColors.primaryText, 
                                  fontSize: 15,),)
      
      
                              ],),
                          ),
                     
                        
                        ],
                        ),
                        ),
                      
                      Expanded(
                        child: Row(
                         children: [
                            Expanded(
                              child: SafeArea(
                                child: SingleChildScrollView(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Upcoming Task', 
                                      style: TextStyle(
                                      color: AppColors.primaryText, 
                                      fontSize: 30,),
                                      ),
                                      const SizedBox( height: 20,
                                      ),
                                                            
                                                   SizedBox(
                                                      height: 200,
                                                      child: ListView(
                                                        clipBehavior: Clip.antiAlias,
                                                        scrollDirection: Axis.vertical,
                                                        shrinkWrap: true,
                                                      children: [
                                                        Container(
                                  width: 400,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                            backgroundColor: Colors.amber, radius: 20, 
                                            foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                     ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                        backgroundColor: Colors.amber, radius: 20, 
                                        foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                    const Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                      ),),
                                      ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                      ),
                                      ),
                                      ),
                                      ),
                                     const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,),),
                                       const Text(
                                        'Deadline 2 hari lagi', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,),)
                                                            
                                                            
                                    ],),
                                                        ),
                                                        
                                                        Container(
                                  width: 400,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,),
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                            backgroundColor: Colors.amber, radius: 20, 
                                            foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                     ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                        backgroundColor: Colors.amber, radius: 20, 
                                        foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                    const Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                      ),),
                                      ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                      ),
                                      ),
                                      ),
                                      ),
                                     const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,),),
                                       const Text(
                                        'Deadline 2 hari lagi', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,),)
                                                            
                                                            
                                    ],),
                                                        ),
                                                        Container(
                                  width: 400,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,),
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                            backgroundColor: Colors.amber, radius: 20, 
                                            foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                     ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                        backgroundColor: Colors.amber, radius: 20, 
                                        foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                    const Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                      ),),
                                      ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                      ),
                                      ),
                                      ),
                                      ),
                                     const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,),),
                                       const Text(
                                        'Deadline 2 hari lagi', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,),)
                                                            
                                                            
                                    ],),
                                                        ),
                                                        Container(
                                  width: 400,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,),
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                            backgroundColor: Colors.amber, radius: 20, 
                                            foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                     ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                        backgroundColor: Colors.amber, radius: 20, 
                                        foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                    const Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                      ),),
                                      ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                      ),
                                      ),
                                      ),
                                      ),
                                     const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,),),
                                       const Text(
                                        'Deadline 2 hari lagi', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,),)
                                                            
                                                            
                                    ],),
                                                        ),
                                                        Container(
                                  width: 400,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,),
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                            backgroundColor: Colors.amber, radius: 20, 
                                            foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                     ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                        backgroundColor: Colors.amber, radius: 20, 
                                        foregroundImage: NetworkImage( 'https://images.app.goo.gl/DShwDXRAwQSdAhLYA' ),
                                     ),),
                                    const Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        ),
                                      ),),
                                      ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(height: 25, 
                                      width: 80, 
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task',
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                      ),
                                      ),
                                      ),
                                      ),
                                     const Text(
                                        'Pemrograman Mobile', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 20,),),
                                       const Text(
                                        'Deadline 2 hari lagi', 
                                      style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 15,),)
                                                            
                                    ],),
                                                        ),             
                                                      ],
                                                      ),
                                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'My Friends', 
                                      style: TextStyle(
                                      color: AppColors.primaryText, 
                                      fontSize: 30,
                                      ),
                                      ),
                                      Text(
                                        'More', 
                                      style: TextStyle(
                                      color: AppColors.primaryText, 
                                      fontSize: 30,
                                      ),
                                      ),
                                      Icon(UniconsLine.arrow_right,
                                      color: AppColors.primaryBg,)
                                    ],
                                  ),
                                  const SizedBox( height: 20,
                                  ),
                                ],
                              ),
                            ),
                      
                          ],
                        ),
                      ),
                    
                      
                      ],),
                    )
                    ),
      
            ],),
            ),
        ],),
      )
    );
  }
}

