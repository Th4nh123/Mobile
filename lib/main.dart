import 'package:flutter/material.dart';

import 'package:untitled/resource/view/app.dart';
import 'package:untitled/resource/view/home.dart';
import 'package:untitled/resource/view/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Now UI PRO Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: '/onboarding',
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => const App(),
          "/home": (BuildContext context) => const Home(),
          "/profile": (BuildContext context) => const Profile(),
        });
  }
}
