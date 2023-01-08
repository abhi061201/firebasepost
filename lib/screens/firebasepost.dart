import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class firebasePost extends StatefulWidget {
  const firebasePost({super.key});

  @override
  State<firebasePost> createState() => _firebasePostState();
}

class _firebasePostState extends State<firebasePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'firebasePost',
        ),
      ),
    );
  }
}
