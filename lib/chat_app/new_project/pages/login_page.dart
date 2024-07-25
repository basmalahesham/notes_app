/*  // auth cubit
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/cubits/auth_cubit/auth_cubit.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/cubits/chat_cubit/chat_cubit.dart';
import 'package:flutter_udemy_tharwat2/chat_app/old_project/pages/register_page.dart';
import 'package:flutter_udemy_tharwat2/chat_app/old_project/widgets(components)/custom_text_form_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constants.dart';
import '../helper/show_snach_bar.dart';
import '../widgets(components)/custom_button.dart';
import 'chat_page.dart';

class LoginPage extends StatelessWidget {
  String? email, password;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  static String id = "loginPage";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          BlocProvider.of<ChatCubit>(context).getMessages();
          Navigator.pushNamed(context, ChatPage.id, arguments: email);
          isLoading = false;
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Image.asset(
                      kLogo,
                      height: 100,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Scholar Chat',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'pacifico',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    const Row(
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFormTextField(
                      onChanged: (data) {
                        email = data;
                      },
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomFormTextField(
                      obscureText: true,
                      onChanged: (data) {
                        password = data;
                      },
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<AuthCubit>(context)
                              .loginUser(email: email!, password: password!);
                        } else {}
                      },
                      text: 'LOGIN',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'dont\'t have an account?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RegisterPage.id);
                          },
                          child: const Text(
                            '  Register',
                            style: TextStyle(
                              color: Color(0xffC7EDE6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
*/
// auth bloc
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_udemy_tharwat2/chat_app/new_project/pages/cubits/chat_cubit/chat_cubit.dart';
import 'package:flutter_udemy_tharwat2/chat_app/old_project/pages/register_page.dart';
import 'package:flutter_udemy_tharwat2/chat_app/old_project/widgets(components)/custom_text_form_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constants.dart';
import '../helper/show_snach_bar.dart';
import '../widgets(components)/custom_button.dart';
import 'chat_page.dart';

class LoginPage extends StatelessWidget {
  String? email, password;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  static String id = "loginPage";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          BlocProvider.of<ChatCubit>(context).getMessages();
          Navigator.pushNamed(context, ChatPage.id, arguments: email);
          isLoading = false;
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Image.asset(
                      kLogo,
                      height: 100,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Scholar Chat',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'pacifico',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    const Row(
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomFormTextField(
                      onChanged: (data) {
                        email = data;
                      },
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomFormTextField(
                      obscureText: true,
                      onChanged: (data) {
                        password = data;
                      },
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<AuthBloc>(context).add(
                              LoginEvent(email: email!, password: password!));
                        } else {}
                      },
                      text: 'LOGIN',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'dont\'t have an account?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RegisterPage.id);
                          },
                          child: const Text(
                            '  Register',
                            style: TextStyle(
                              color: Color(0xffC7EDE6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
