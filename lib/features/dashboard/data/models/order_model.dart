import 'package:flutter/material.dart';

class OrderModel {
  final String image;
  final String title;
  final String amount;
  final Gradient gradient;

 const  OrderModel({
    required this.image,
    required this.gradient,
    required this.title,
    required this.amount,
  });
}
