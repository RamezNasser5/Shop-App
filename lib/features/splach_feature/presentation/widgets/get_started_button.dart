import 'package:coffee_app/features/auth_feature/presentation/views/login_page.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 250,
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
      },
      color: const Color(0xff3A2F2F),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Text(
        'Get Started',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
