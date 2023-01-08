import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


class AddUser extends StatelessWidget {
    final String fullname ;
    final String companyname;
    final int age;
     AddUser({super.key, required this.fullname, required this.companyname, required this.age});

  @override
  Widget build(BuildContext context) {
    CollectionReference users= FirebaseFirestore.instance.collection('users');
    Future<void>adduser(){
      return users.add({
        'full_name':fullname,
        'company_name': companyname,
        'age':age,

      }).then((value) => print('UserAdded Successfully',),).catchError((eroor){
        print('failed');
      });

    };
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('AddUserData'),
              onPressed: adduser,
            ),
          )
        ],
      ),
    );
  }
}