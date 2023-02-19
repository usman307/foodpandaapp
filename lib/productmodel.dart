import 'package:flutter/material.dart';
import 'package:untitled/firrstoreservices.dart';
class productmodel {

  final String ?productid;
  final String ?productname;

  final int ?productprice;
  final int ?productquantity;
  String ?productimages;

  productmodel({ this.productname, this.productid, this.productprice, this.productquantity, this.productimages});


}