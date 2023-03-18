import 'package:flutter/material.dart';
import 'package:untitled/logic/get_posts.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return GetPosts();
  }
}
