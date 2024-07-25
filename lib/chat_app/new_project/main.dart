import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/chat_page.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/cubits/auth_cubit/auth_cubit.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/cubits/chat_cubit/chat_cubit.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/login_page.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/register_page.dart';

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
    return MultiBlocProvider(
      providers: [
        //BlocProvider(create: (context) => LoginCubit()),
        //BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => ChatCubit()),
      ],
      child: MaterialApp(
        routes: {
          LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id: (context) => ChatPage(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: LoginPage.id,
      ),
    );
  }
}
