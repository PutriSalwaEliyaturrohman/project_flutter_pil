import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pil/app/routes/app_pages.dart';
import 'package:project_flutter_pil/app/utils/style/AppColors.dart';
import 'package:unicons/unicons.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                  Spacer(),
                  
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                    child: Text(
                      'More', 
                    style: TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 30,
                    ),
                    ),
                  ),
                  Icon(UniconsLine.arrow_right,
                  color: AppColors.primaryBg,)
                ],
              ),     
              const SizedBox( 
                height: 20,
              ),
              SizedBox(
                height: 400, 
                child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.isPhone? 2 : 3, 
                crossAxisSpacing: 20, 
                mainAxisSpacing: 20), 
                itemBuilder: (context, index){
                  return Column(
                    children: [
                     ClipRRect(
                  borderRadius: BorderRadius.circular(
                    100),
                  child: const Image(
                  image: NetworkImage( 'https://images.pexels.com/photos/852793/pexels-photo-852793.jpeg' ),
                    ),
                    ),
                  const Text('Putri Salwa E', 
                  style: TextStyle(color: AppColors.primaryText),),
                  ],);
                } ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
