import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('About Screen'),
          ElevatedButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                }
              },
              child: Text('Go Back'))
        ],
      )),
    );
  }
}
