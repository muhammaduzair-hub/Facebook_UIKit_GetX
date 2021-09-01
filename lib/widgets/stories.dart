import 'package:flutter/material.dart';
import 'package:flutter_app_h/controllers/stories_controller.dart';
import 'package:get/get.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      height: MediaQuery.of(context).size.height*0.2,
      color: Colors.transparent,
      child:GetX<StoriesController>(
        init: StoriesController(),
        builder: (controller){
          return ListView.builder(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemCount: controller.stories.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width*0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("${controller.stories[index].statuspic}"),
                          fit: BoxFit.cover
                      )

                  ),
                  child:Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, top: 3),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 17,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7,top: 5),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("${controller.stories[index].profilepic}"),
                              radius: 15,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("${controller.stories[index].title}", style: TextStyle(fontSize: 14,color: Colors.black), ),
                        )
                      ]
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}