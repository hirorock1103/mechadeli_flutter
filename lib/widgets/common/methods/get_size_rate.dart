import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/constants.dart';

double getSizeRate(Size size) {

  //PC : 1
  //phone : phone
  double rate = 1.0;
  if(size.width <= AppConstant.tabletMaxSize){
    rate = 0.9;
  }
  if(size.width <= AppConstant.phoneMaxSize){
    rate = AppConstant.phoneTextSizeRate;
  }

  return rate;

}
