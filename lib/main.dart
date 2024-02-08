import 'package:flutter/material.dart';
import 'package:medicalappointment/addInfo.dart';
import 'package:medicalappointment/completed.dart';
import 'package:medicalappointment/homeSceen.dart';
import 'package:medicalappointment/upcoming.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.roteName: (context) => HomeScreen(),
        Upcoming.roteName: (context) => Upcoming(),
        Completed.roteName: (context) => Upcoming(),
        AddConsulation.routeName: (context) => AddConsulation()
      },
      initialRoute: HomeScreen.roteName,
// Upcoming.roteName
    );
  }
}
