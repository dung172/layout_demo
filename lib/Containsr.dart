import 'package:flutter/material.dart';
class Containsr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 20, color: Colors.green),
            borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          margin: const EdgeInsets.all(12),
        )
    );
  }
}