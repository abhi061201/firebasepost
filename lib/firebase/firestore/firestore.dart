import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddUserpractice extends StatelessWidget {
  FirebaseFirestore firestorinstance = FirebaseFirestore.instance;
  final String fullName;
  final String company;
  final int age;
  AddUserpractice(
      {super.key,
      this.fullName = 'abhishek',
      this.company = 'company',
      this.age = 0});

  @override
  Widget build(BuildContext context) {
    CollectionReference user = firestorinstance.collection('users');
    adduser() async {
      return user
          .add({
            'full_name': fullName,
            'company': company,
            'age': 20,
          })
          .then(
            (value) => print(
              'user Added Successfully',
            ),
          )
          .onError(
            (error, stackTrace) => print(
              error,
            ),
          );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(onPressed: ()=>adduser, child:Text('add user'), ),
          ],
        ),
      ),
    );
  }
}
