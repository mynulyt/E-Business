import 'package:emart_ecommerce/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtom(
    {required double width,
    required double height,
    required String icon,
    required String title,
    required VoidCallback onPress}) {
  return GestureDetector(
    onTap: onPress,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(icon, width: 26),
        10.heightBox,
        title.text.fontFamily(semibold).color(darkFontGrey).make(),
      ],
    ).box.rounded.white.size(width, height).shadowSm.make(),
  );
}
