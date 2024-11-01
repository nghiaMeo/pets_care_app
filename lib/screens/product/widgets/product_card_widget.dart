import 'package:flutter/material.dart';

class ProductCardWidget extends StatefulWidget {
  final String nameProduct;
  final String priceProduct;
  final String imageProduct;

  const ProductCardWidget(
      {super.key,
      required this.nameProduct,
      required this.priceProduct,
      required this.imageProduct});

  @override
  _ProductCardWidgetState createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            // offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  widget.imageProduct,
                  fit: BoxFit.fill,
                  height: 100.0,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorited = !isFavorited;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: isFavorited ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Text(
            widget.nameProduct,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            '\$ ${widget.priceProduct}',
            style: const TextStyle(
              color: Colors.green,
              fontSize: 13.0,
            ),
          ),
          Row(
            children: [
              _buildButtonBuy(),
              SizedBox(width: 10),
              _buildButtonAddCart(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildButtonBuy() {
    return Expanded(
      child: TextButton(
        onPressed: () {
          print('${widget.nameProduct} purchased!');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Màu nền cho nút "Buy"
        ),
        child: const Text(
          'Buy',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildButtonAddCart() {
    return Expanded(
      child: TextButton(
        onPressed: () {
          print('${widget.nameProduct} adde');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange, // Màu nền cho nút "Add to Cart"
        ),
        child: const Text(
          'Add',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
