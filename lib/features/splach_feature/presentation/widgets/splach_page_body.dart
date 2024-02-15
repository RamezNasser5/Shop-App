import 'package:coffee_app/features/splach_feature/presentation/widgets/get_started_button.dart';
import 'package:coffee_app/features/splach_feature/presentation/widgets/splach_title.dart';
import 'package:flutter/material.dart';

class SplachPageBody extends StatelessWidget {
  const SplachPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          child: const GetStartedButton(),
        ),
        const Positioned(
          top: 20,
          child: SplachTitle(),
        )
      ],
    );
  }
}
