import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/store_app/models/product_model.dart';
import 'package:flutter_udemy_tharwat2/store_app/screens/update_product.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
    super.key,
     required this.product,
  });
   ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    offset: Offset(10, 10))
              ],
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0,6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -60,
            //bottom: 85,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
