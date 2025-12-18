import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),actions: [
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            GoRouter.of(context).go('/login');
          },
        )
      ],),
      body: Center(child: Text('Welcome to Home Screen')),
    );
  }
}