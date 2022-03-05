import 'package:flutter/material.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Card', style: TextStyle(fontSize: 30),),
      ),
    );;
  }
}
