import 'package:emart_ecommerce/consts/color.dart';
import 'package:emart_ecommerce/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget DetailsCart({Width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "$count".text.fontFamily(bold).color(darkFontGrey).make(),
      5.heightBox,
      "$title".text.color(darkFontGrey).make(),
    ],
  )
      .box
      .rounded
      .white
      .height(60)
      .width(Width)
      .padding(const EdgeInsets.all(4))
      .make();
}