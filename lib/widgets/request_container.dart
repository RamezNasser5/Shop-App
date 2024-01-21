import 'package:coffee_app/cubits/card_products_cubit.dart/card_products_cubit.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:coffee_app/screens/request_complete.dart';
import 'package:coffee_app/widgets/go_to_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequestContainer extends StatelessWidget {
  const RequestContainer({
    super.key,
    required this.productModel,
    required this.state,
  });

  final ProductModel productModel;
  final CardProductsSuccess state;

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
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Row(
            children: [
              const SizedBox(
                width: 23,
              ),
              const Text(
                'Subtotal',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 200,
              ),
              Text(
                r'$ ' '${state.totalPrice}',
                style: const TextStyle(
                  color: Color(0xffFFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          const Padding(
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
                  width: 155,
                ),
                Text(
                  r'$ 0.5',
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          const Padding(
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
                  width: 240,
                ),
                Text(
                  r'$ 0.5',
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                const Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 225,
                ),
                Text(
                  r'$ ' '${state.totalPrice + 1}',
                  style: const TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          GoToCard(
            productModel: productModel,
            onTap: () {
              BlocProvider.of<CardProductsCubit>(context).fetchAllProducts();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RequestComplete();
                  },
                ),
              );
            },
            title: 'Add Request',
            price: state.totalPrice + 1,
          )
        ],
      ),
    );
  }
}
