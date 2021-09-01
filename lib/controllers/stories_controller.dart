import 'package:flutter_app_h/models/stories_model.dart';
import 'package:get/state_manager.dart';

class StoriesController extends GetxController{
  List<StoriesModel> stories = <StoriesModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }
  void fetchProducts() async {
    var Result = [
      StoriesModel(
        name: "Uzair",
        title: "myStory",
        profilepic: "asset/images/profile.jpg",
        statuspic: "asset/images/story.jpg"
      ),
      StoriesModel(
          name: "Uzair",
          title: "myStory",
          profilepic: "asset/images/profile.jpg",
          statuspic: "asset/images/story.jpg"
      ),
      StoriesModel(
          name: "Uzair",
          title: "myStory",
          profilepic: "asset/images/profile.jpg",
          statuspic: "asset/images/story.jpg"
      ),
      StoriesModel(
          name: "Uzair",
          title: "myStory",
          profilepic: "asset/images/profile.jpg",
          statuspic: "asset/images/story.jpg"
      ),
      StoriesModel(
          name: "Uzair",
          title: "myStory",
          profilepic: "asset/images/profile.jpg",
          statuspic: "asset/images/story.jpg"
      ),
      StoriesModel(
          name: "Uzair",
          title: "myStory",
          profilepic: "asset/images/profile.jpg",
          statuspic: "asset/images/story.jpg"
      ),
      StoriesModel(
          name: "Uzair",
          title: "myStory",
          profilepic: "asset/images/profile.jpg",
          statuspic: "asset/images/story.jpg"
      ),
      StoriesModel(
          name: "Uzair",
          title: "myStory",
          profilepic: "asset/images/profile.jpg",
          statuspic: "asset/images/story.jpg"
      ),
    ];

    stories.addAll(Result);
  }
}