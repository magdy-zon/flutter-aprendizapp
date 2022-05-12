import 'package:aprendizapp/Pages/Home/home.dart';
import 'package:aprendizapp/Pages/Login/login_screen.dart';
import 'package:aprendizapp/Pages/Login/register_screen.dart';
import 'package:aprendizapp/Pages/Login/consider_screen.dart';
import 'package:aprendizapp/Pages/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:aprendizapp/Libraries/Widgets/WidgetLibrary.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: theme,
        routes: {
          '/': (context) => const Login(),
          '/register': (context) => const Register(),
          '/consider': (context) => const Consider(),
          '/home': (context) => const Home(),
        },
      );
    });
  }
}
