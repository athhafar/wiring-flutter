import 'package:flutter/material.dart';

class TampilPostPage extends StatelessWidget {
  TampilPostPage(
      {super.key,
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.age,
      required this.photo});

  final int id;
  final String firstName;
  final String lastName;
  final String age;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$id'),
          
        ],
      ),
    );
  }
}
