import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Row(
        children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue[100],
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height:100,
                    alignment: Alignment.topCenter,
                    child: Image(
                    image: AssetImage('assets/icons/icon.png')
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Center( child: InkWell(
                  child: Column (
                    children: [
                      Container(
                        child: Icon(UniconsLine.laptop,),
                      ),
                      Text(
                      'Home',
                       style: TextStyle(
                       color: Colors.grey,
                       fontSize: 16,
                      ),
                      ),
                      ])
                  ))
                )
                ],
              ),
            )
            )),
        Expanded(
          flex: 15,
          child: Container(
            color: Colors.white,
            ))
      ],)
    );
  }
}
