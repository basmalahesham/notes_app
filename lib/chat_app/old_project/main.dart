import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/chat_app/old_project/pages/chat_page.dart';
import 'package:flutter_udemy_tharwat2/chat_app/old_project/pages/login_page.dart';
import 'package:flutter_udemy_tharwat2/chat_app/old_project/pages/register_page.dart';

import '../../firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // 'LoginPage': (context) => LoginPage(),
        // 'RegisterPage' : (context) => RegisterPage(),
        LoginPage.id : (context) => const LoginPage(),
        RegisterPage.id : (context) => const RegisterPage(),
        ChatPage.id : (context) => ChatPage(),

      },
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
    );
  }
}
