import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:first/instegram/model/dummyData.dart';
import 'package:first/instegram/model/post.dart';
import 'package:first/instegram/model/posts_Response.dart';
import 'package:first/instegram/model/user.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class NewPost extends StatefulWidget {
  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  File? selectedImage;

  String? title;
  TextEditingController controller = TextEditingController();
  addNewPost() {}

  getImage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    selectedImage = File(file!.path);
    setState(() {});
  }

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              child: Icon(Icons.favorite))
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 94, 83),
        title: Text('New Post'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    getImage();
                  },
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      height: 300,
                      width: double.infinity,
                      child: selectedImage == null
                          ? Icon(
                              Icons.add,
                              size: 40,
                            )
                          : Image.file(selectedImage!),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required value';
                    } else if (value.length < 10) {
                      return 'your content must be larger than 10 letters';
                    }
                  },
                  controller: controller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      labelText: 'Add New Post',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      fixedSize: Size(250, 50)),
                  child: Text('Add New Post'),
                  onPressed: () {
                    if (selectedImage == null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          action: SnackBarAction(
                            label: 'Ok!',
                            onPressed: () {
                              ScaffoldMessenger.of(context).clearSnackBars();
                            },
                            textColor: Colors.red,
                          ),
                          content: Text('You Have to Select image first')));

                      // showDialog(
                      //     context: context,
                      //     builder: (context) {
                      //       return AlertDialog(
                      //         content: Text('You Have to Selec image first'.tr()),
                      //         actions: [
                      //           TextButton(
                      //               onPressed: () {
                      //                 Navigator.pop(context);
                      //               },
                      //               child: Text('Ok!'))
                      //         ],
                      //       );
                      //     });

                    } else if (formKey.currentState!.validate()) {
                      User user = User('Yousef Aljazzar',
                          'https://images.unsplash.com/photo-1658242356534-9935f4e9aaed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80');
                      Post post = Post.fromFile(
                          content: controller.text, file: selectedImage);

                      PostsResponse postsResponse = PostsResponse(user, post);
                      posts.add(postsResponse);
                      Navigator.pop(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
