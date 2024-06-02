import 'package:auth_app/coomon/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The Bear is Here !",
            style: TextStyle(fontSize: 40, color: titleColor),
          ),
        ],
      ),
    );
  }
}
