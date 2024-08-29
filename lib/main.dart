import 'package:flutter/material.dart';
import 'package:flutter_play/auth/login_or_register.dart';
import 'package:flutter_play/models/restuarant.dart';
import 'package:flutter_play/themes/theme_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
   MultiProvider(providers: [
     ChangeNotifierProvider(create: (context) => ThemeProvider()),
     ChangeNotifierProvider(create: (context) => Restuarant()),
   ],
   child: const MyApp(),
   ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}


