import 'package:api_and_state_management/presentation/ui/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        /// [*] Registering routes dari ui/page yang telah dibuat
        '/': (context) => const LoginPage(),
      },
    );
  }
}
