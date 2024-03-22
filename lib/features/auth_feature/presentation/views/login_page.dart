import 'package:coffee_app/features/auth_feature/presentation/manager/auth_bloc/auth_bloc.dart';
import 'package:coffee_app/features/auth_feature/presentation/views/signup_page.dart';
import 'package:coffee_app/features/auth_feature/presentation/widgets/custom_login_button.dart';
import 'package:coffee_app/features/auth_feature/presentation/widgets/custom_login_text.dart';
import 'package:coffee_app/features/auth_feature/presentation/widgets/custom_starter_text_field.dart';
import 'package:coffee_app/features/home_feature/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String? email;
  String? password;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          isLoading = false;
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const HomePage();
          }));
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
          isLoading = false;
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffF5F5F5),
          body: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 350.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              const CustomLoginText(
                text1: 'Let\'s Sign you In',
                text2:
                    'Enter your information  below or continue with  your social accounts.',
              ),
              const SizedBox(
                height: 120,
              ),
              CustomStarterTextField(
                onFieldSubmitted: (value) {
                  email = value;
                },
                hintText: 'Email Address',
              ),
              const SizedBox(
                height: 40,
              ),
              CustomStarterTextField(
                onFieldSubmitted: (value) {
                  password = value;
                },
                hintText: 'Password',
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 150,
              ),
              CustomLoginButton(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }),
                  );
                },
                textFieldText: 'Sign In',
                text: 'Sign Up here.',
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context)
                      .add(LoginEvent(email: email!, password: password!));
                },
                isLoading: isLoading,
              )
            ],
          ),
        );
      },
    );
  }
}
