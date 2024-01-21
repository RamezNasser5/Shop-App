import 'package:coffee_app/cubits/detailes_cubit/detailes_cubit.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:coffee_app/widgets/detailes_container.dart';
import 'package:flutter/material.dart';

class InitialStack extends StatelessWidget {
  const InitialStack(
      {super.key, required this.productModel, required this.state});

  final ProductModel productModel;
  final DetailesInitial state;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          productModel.urlImage,
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: DetailesContainer(
            productModel: productModel,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
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
              Text(
                productModel.title,
                style: const TextStyle(
                  color: Colors.white,
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
                    color: Colors.black,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Color(state.favioriteColor),
                      size: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
