import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


final userref= FirebaseFirestore.instance.collection('users');
class firestoredata extends StatefulWidget {
  const firestoredata({super.key});

  @override
  State<firestoredata> createState() => _firestoredataState();
}

class _firestoredataState extends State<firestoredata> {
  @override
  void initState() {
    // TODO: implement initState
    getuser();
    super.initState();

  }
  void getuser(){
    // userref.getDocuments().then((){});
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
    );
  }
}