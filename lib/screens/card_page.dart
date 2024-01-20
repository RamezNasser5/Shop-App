import 'package:coffee_app/models/product_model.dart';
import 'package:coffee_app/widgets/card_detailes_product.dart';
import 'package:coffee_app/widgets/request_container.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 23,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffA52A2A),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),
              const Text(
                'Cart',
                style: TextStyle(
                  color: Color(0xff542E45),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffA52A2A),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 230.0, top: 30),
            child: Text(
              'My order',
              style: TextStyle(
                color: Color(0xff542E45),
                fontFamily: 'Poppins',
                fontSize: 30,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 20),
            child: Row(
              children: [
                Text(
                  'You have ',
                  style: TextStyle(
                    color: Color(0xff542E45),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                Text(
                  '2 items',
                  style: TextStyle(
                    color: Color(0xffA52A2A),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
                Text(
                  ' in your cart',
                  style: TextStyle(
                    color: Color(0xff542E45),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CardProductDetailes();
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RequestContainer(
            productModel: productModel,
          )
        ],
      ),
    );
  }
}
