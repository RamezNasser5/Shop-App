import 'package:coffee_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class SplachPage extends StatelessWidget {
  const SplachPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/splach_background.jpeg'),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.85,
            left: MediaQuery.of(context).size.width * 0.2,
            child: MaterialButton(
              height: 50,
              minWidth: 250,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              color: const Color(0xff3A2F2F),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          const Positioned(
            top: 20,
            child: Column(
              children: [
                Text(
                  'Now It\'s',
                  style: TextStyle(
                    color: Color(0xff3A2F2F),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  '    Time for',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  '        a Coffee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
