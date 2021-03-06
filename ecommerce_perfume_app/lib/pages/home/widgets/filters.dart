import 'package:flutter/material.dart';

const double size = 56;

class Filters extends StatelessWidget {
  const Filters({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      padding: EdgeInsets.only(left: 30, right: 30 / 3),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildIcon(),
          _buildLabel('Floral'),
          _buildLabel('Warm & Spicy'),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Color(0xFF59a463),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(8),
      child: RotatedBox(
        quarterTurns: 3,
        child: Icon(
          Icons.tune,
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      margin: EdgeInsets.only(left: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 16,
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Color(0xFF59a463),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
