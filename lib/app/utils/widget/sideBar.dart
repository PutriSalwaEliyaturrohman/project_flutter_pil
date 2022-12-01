import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pil/app/routes/app_pages.dart';
import 'package:project_flutter_pil/app/utils/style/AppColors.dart';
import 'package:unicons/unicons.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: AppColors.primaryBg,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //logo
              Container(
                height:100,
                padding: const EdgeInsets.only(top: 30, ),
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: const Image(
                image: AssetImage('./icons/icon.png')
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/home'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:Icon(Get.currentRoute == '/home'? UniconsLine.laptop 
                    : UniconsLine.laptop, 
                    color: AppColors.primaryText,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Home',
                   style: TextStyle(
                   color: AppColors.primaryText,
                   fontSize: 16,
                  ),
                  ),
                  ]
                  ),
                  onTap: () => Get.toNamed(Routes.HOME),
              )
              )

            ),
            
             SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/task'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:Icon(Get.currentRoute == '/task'? UniconsLine.cube 
                    : UniconsLine.cube,
                    color: AppColors.primaryText,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Task',
                   style: TextStyle(
                   color: AppColors.primaryText,
                   fontSize: 16,
                  ),
                  ),
                  ]),
                  onTap: () => Get.toNamed(Routes.TASK),
              ))
            ),
    
             SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/friends'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:Icon(Get.currentRoute == '/friends'? UniconsLine.heart 
                    : UniconsLine.heart, 
                    color: AppColors.primaryText,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Friends',
                   style: TextStyle(
                   color: AppColors.primaryText,
                   fontSize: 16,
                  ),
                  ),
                  ]),
                  onTap: () => Get.toNamed(Routes.FRIENDS),
              ))
            ),
    
             SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/profile'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:Icon(Get.currentRoute == '/profile'? UniconsLine.usd_circle 
                    : UniconsLine.user_circle,
                    color: AppColors.primaryText,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Profile',
                   style: TextStyle(
                   color: AppColors.primaryText,
                   fontSize: 16,
                  ),
                  ),
                  ]),
                  onTap: () => Get.toNamed(Routes.PROFILE),
              ),
              )
            ),
    
            ],
    
          ),
        )
        ),
    );
  }
}



