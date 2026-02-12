import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/concert_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/login_screen': (context) => const LoginScreen(),
      '/register_screen': (context) => const RegisterScreen(),
      '/home_screen': (context) => const HomeScreen(),
      '/concert_screen': (context) => const ConcertScreen(),
      '/': (context) => const LoginScreen(),
    };
  }
}
