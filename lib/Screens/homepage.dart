import 'package:flutter/material.dart';
import 'package:flutter_app_h/Screens/bodies/home.dart';
import 'package:flutter_app_h/widgets/my_tab_controller.dart';
import 'package:get/get.dart';

class Homepages extends StatelessWidget {
  final MyTabController _tabx = Get.put(MyTabController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          //shadowColor: Colors.transparent,
          title: Text("facebook", style: TextStyle(letterSpacing: 4, fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold)),
          actions: [
            IconButton(
              focusColor: Colors.blue,
              onPressed: (){},
              icon: Icon(Icons.search, color: Colors.black54,),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.message, color: Colors.black54,),
            )
          ],

          bottom: TabBar(
            //isScrollable: true,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.blue,
            controller: _tabx.controller ,
            tabs: [
              Icon(Icons.home, color: Colors.black54,),
              Icon(Icons.airplay_outlined, color: Colors.black54),
              Icon(Icons.people_alt_rounded, color: Colors.black54),
              Icon(Icons.notifications_active_outlined, color: Colors.black54),
              Icon(Icons.drag_handle_sharp, color: Colors.black54),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabx.controller,
          children: [
            Home(),
            Home(),
            Home(),
            Home(),
            Home()
          ],
        ),
      ),
    );
  }
}
