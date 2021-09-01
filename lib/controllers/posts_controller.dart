import 'package:flutter_app_h/models/post_model.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';

class PostsController extends GetxController{
  List<PostsModel> posts = <PostsModel>[].obs;
  ScrollController scroolcontroller = ScrollController();
  var CloseTopContainer = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
    scroolcontroller.addListener(() {
      CloseTopContainer.value = scroolcontroller.offset > 50 ;
    });

  }

  void fetchProducts() async {
    
    var Result = [
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
      PostsModel(
          username: "Uzair",
          postText:  "Look at my size of this puppy's paw! Spotted in a shop during our trip to Melbourne, Australia.",
          profilepic: "asset/images/profile.jpg",
          PostPic:  "asset/images/story.jpg",
          date: DateTime.now().toString()
      ),
    ];

    posts.addAll(Result);
  }
}