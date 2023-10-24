import 'package:flutter/material.dart';

class TampilPage extends StatelessWidget {
  TampilPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('$id')],
      ),
    );
  }
}
