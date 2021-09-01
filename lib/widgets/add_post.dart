import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  const AddPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage("asset/images/profile.jpg"),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(238, 237, 237,1),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                style: TextStyle(
                    color: Colors.black54
                ),
                decoration: InputDecoration(
                  hintText: "Add a post",
                  hintStyle: TextStyle(color: Colors.black54),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(238, 237, 237,1)
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(238, 237, 237,1)
                      )
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Color.fromRGBO(238, 237, 237,1),
            child: Icon(Icons.image, color: Colors.black54,),
          ),
        )
      ],
    );
  }
}