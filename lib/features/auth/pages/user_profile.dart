import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        title: const Text('Can\'t Wait 🤩'),
      ),
      body: ProfileScreen(
        providers: [
          EmailAuthProvider(),
        ],
        actions: [
          SignedOutAction(
            (context) {
              Navigator.of(context).pop();
            },
          ),
        ],
        avatarSize: 24,
      ),
    );
  }
}
