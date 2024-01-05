import 'package:coffee_app/screens/deatails_page.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailesPage();
          }));
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Container(
                height: 180,
                width: 130,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    offset: const Offset(10, 10),
                  )
                ]),
                child: const Card(
                  elevation: 5,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expresso',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'with milk',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          r'$' '3.50',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 60,
              bottom: 160,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/4.jpeg',
                ),
              ),
            ),
            Positioned(
              left: 95,
              top: 155,
              child: Container(
                height: 42,
                width: 42,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0xffA52A2A),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
