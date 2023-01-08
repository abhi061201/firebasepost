import 'package:firebasepost/firebase/firestore/adduserToFirestore.dart';
import 'package:firebasepost/firebase/firestore/firestore.dart';
import 'package:firebasepost/image_upload/upload_button.dart';
import 'package:flutter/material.dart';
import './screens/firebasepost.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// import './firebase/firestore/adduserToFirestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  CollectionReference User = FirebaseFirestore.instance.collection('user');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter User Input',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await User.add({
                    'name': 'Abhishek',
                  }).then(
                    (value) => print('user added'),
                  );
                },
                child: Text(
                  'add User',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
