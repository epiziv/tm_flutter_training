import 'package:flutter/material.dart';

class Copyrights extends StatelessWidget {
  const Copyrights({super.key});

  @override
  Widget build(BuildContext context) {
   return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Text("© 2024 CodeBridge Sdn Bhd. All rights reserved."),
    );
  }
}