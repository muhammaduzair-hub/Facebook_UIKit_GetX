import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_h/controllers/posts_controller.dart';
import 'package:flutter_app_h/widgets/add_post.dart';
import 'package:flutter_app_h/widgets/stories.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: GetX<PostsController>(
        //because of hiding the top container(Animated Container) i call this controller here
        init: PostsController(),
        builder: (postController){
          return Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: MediaQuery.of(context).size.width,
                  alignment:  Alignment.topCenter,
                  height: postController.CloseTopContainer==true ?0: MediaQuery.of(context).size.height*0.32,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.32,
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Stories(),
                        Container(
                          height: 10,
                          color: Color.fromRGBO(238, 237, 237,1),
                        ),
                        AddPost(),
                        Container(
                          height: 10,
                          color: Color.fromRGBO(238, 237, 237,1),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    controller: postController.scroolcontroller,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 10),
                    itemCount: postController.posts.length,
                    itemBuilder: (context, index) {
                      print("${postController.posts.length}");
                      return Container(
                          height: MediaQuery.of(context).size.height*0.6,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(postController.posts[index].profilepic),
                                ),
                                title: Text('${postController.posts[index].username}'),
                                subtitle: Text('${postController.posts[index].date}'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  '${postController.posts[index].postText}',
                                  style: TextStyle(fontSize: 14,),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  child: Hero(
                                    tag: 'imageHero',
                                    child: Image.asset(
                                      '${postController.posts[index].PostPic}',
                                      fit: BoxFit.fill,
                                      height: MediaQuery.of(context).size.width,),
                                  ),
                                  onTap: () {
                                    Get.to(DetailScreen(img: postController.posts[index].PostPic));
                                    // Navigator.push(context, MaterialPageRoute(builder: (_) {
                                    //   return DetailScreen(img: postController.posts[index].PostPic,);
                                    // }));
                                  },
                                ),
                              ),
                              Divider(height: 10,)
                            ],
                          )
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


class DetailScreen extends StatelessWidget {
  final String img;

  const DetailScreen({Key? key,required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(img),
          ),
        ),
        onTap: () {
          Get.back();
        },
      ),
    );
  }
}

