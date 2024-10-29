import 'package:emart_ecommerce/consts/consts.dart';
import 'package:flutter/material.dart';

Widget featureHomeButtom({String? title, icon}) {
  return Column(
    children: [
      Image.asset(
        icon,
        width: 40,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.color(darkFontGrey).fontFamily(semibold).make(),
    ],
  )
      .box
      .width(200)
      .padding(const EdgeInsets.all(4))
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .white
      .outerShadowSm
      .roundedSM
      .make();
}
