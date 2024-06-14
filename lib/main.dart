import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/todo_screen.dart';
import 'screens/user_info_screen.dart';
import 'screens/developer_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/todo': (context) => const ToDoScreen(),
        '/user': (context) => const UserInfoScreen(),
        '/developer': (context) => const DeveloperInfoScreen(),
      },
    );
  }
}
