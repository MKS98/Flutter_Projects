import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBottun extends StatelessWidget {
  const CustomBottun({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      width: 120,
      height: 50,
      child: Center(child: Text('LOGIN')),
    );
  }
}
