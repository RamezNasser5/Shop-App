import 'package:coffee_app/widgets/go_to_card.dart';
import 'package:flutter/material.dart';

class RequestContainer extends StatelessWidget {
  const RequestContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 440,
      decoration: const BoxDecoration(
        color: Color(0xffA52A2A),
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(200, 150),
          topRight: Radius.elliptical(200, 150),
        ),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Row(
            children: [
              SizedBox(
                width: 23,
              ),
              Text(
                'Subtotal',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 245,
              ),
              Text(
                r'$ 8',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                SizedBox(
                  width: 23,
                ),
                Text(
                  'Shipping Cost',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 190,
                ),
                Text(
                  r'$ 8',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                SizedBox(
                  width: 23,
                ),
                Text(
                  'Taxes',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 275,
                ),
                Text(
                  r'$ 8',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 280,
                ),
                Text(
                  r'$ 8',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          SizedBox(
            height: 37,
          ),
          GoToCard()
        ],
      ),
    );
  }
}
