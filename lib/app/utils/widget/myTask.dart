import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pil/app/routes/app_pages.dart';
import 'package:project_flutter_pil/app/utils/style/AppColors.dart';
import 'package:unicons/unicons.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
             ),),
             ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const CircleAvatar(
                backgroundColor: Colors.amber, radius: 20, 
                foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
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
                    foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
             ),),
             ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const CircleAvatar(
                backgroundColor: Colors.amber, radius: 20, 
                foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
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
                    foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
             ),),
             ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const CircleAvatar(
                backgroundColor: Colors.amber, radius: 20, 
                foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
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
                    foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
             ),),
             ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const CircleAvatar(
                backgroundColor: Colors.amber, radius: 20, 
                foregroundImage: NetworkImage( 'https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1' ),
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
      );
  }
}

