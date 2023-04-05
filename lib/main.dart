import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'API Test',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        radioTheme: const RadioThemeData(
          fillColor: MaterialStatePropertyAll(Colors.lightBlue),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.lightBlue),
        primarySwatch: Colors.teal,
        primaryColor: Colors.lightBlue,
        dividerColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      //LogInScreen(),
    );
  }
}
