import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:paymentwallet/Screens/Homescreen.dart';
import 'package:paymentwallet/Screens/loginScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth.instance.signOut();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payment Wallet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF21564B)),
        useMaterial3: true,
      ),
      home: FirebaseAuth.instance.currentUser != null
          ? HomeScreen()
          : LoginScreen(),
    );
  }
}
