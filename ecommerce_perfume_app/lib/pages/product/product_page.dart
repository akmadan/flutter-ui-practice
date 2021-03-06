import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/models/product.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/product/widgets/add_to_cart.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/product/widgets/indicators.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/product/widgets/info.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/product/widgets/topbar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    Key key,
    @required this.product,
  })  : assert(product != null),
        super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF8bb957), Color(0xFF418e4f)],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              if (Platform.isAndroid) SizedBox(height: statusBarHeight),
              ProductTopbar(),
              _buildImage(),
              _buildInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 72,
        ),
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Column(
            children: <Widget>[
              Image.asset(
                product.image,
              ),
              DotsIndicator(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Stack(
      children: <Widget>[
        ProductInfo(product: product),
        AddToCart(),
      ],
    );
  }
}
