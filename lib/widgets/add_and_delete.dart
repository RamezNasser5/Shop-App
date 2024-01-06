import 'package:flutter/material.dart';

class AddAndDelete extends StatelessWidget {
  const AddAndDelete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffA52A2A),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(
            Icons.delete,
            color: Color(0xffA52A2A),
            size: 40,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Text(
            "5",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffA52A2A),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xffA52A2A),
            size: 40,
          ),
        ),
      ],
    );
  }
}
