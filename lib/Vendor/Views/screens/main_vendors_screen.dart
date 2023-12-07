import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class mainVendorsScreen extends StatelessWidget {
  const mainVendorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:  TextButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                  },
                  child: Text('Signout')),),
    );
  }
}