import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vendor_app_only/Vendor/Views/auth/vendor_auth_screen.dart';
import 'package:vendor_app_only/Vendor/Views/screens/landing_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}
var p = Color.fromARGB(255, 231, 76, 60);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: VendorAuthScreen(),
      builder:  EasyLoading.init(),
    );
  }
}
