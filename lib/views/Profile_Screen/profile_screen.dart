import 'package:emart_ecommerce/Controller/auth_controller.dart';
import 'package:emart_ecommerce/consts/consts.dart';
import 'package:emart_ecommerce/consts/list.dart';
import 'package:emart_ecommerce/views/Home_Screen/components/details_cart.dart';
import 'package:emart_ecommerce/views/auth_screen/login_screen.dart';
import 'package:emart_ecommerce/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //For edit profile
              const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  )).onTap(() {}),
              //for user
              Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 70,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.heightBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy Useer"
                            .text
                            .fontFamily(semibold)
                            .color(whiteColor)
                            .make(),
                        5.heightBox,
                        "mynulalam27@gmail.com".text.color(whiteColor).make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    onPressed: () async {
                      await Get.put(AuthController()).signoutMethod(context);
                      Get.offAll(() => const LoginScreen());
                    },
                    child: "Logout".text.fontFamily(semibold).white.make(),
                  )
                ],
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsCart(
                      count: "00",
                      title: "In our cart",
                      Width: context.screenWidth / 3.4),
                  DetailsCart(
                      count: "22",
                      title: "Wishes List",
                      Width: context.screenWidth / 3.4),
                  DetailsCart(
                      count: "44",
                      title: "your Order",
                      Width: context.screenWidth / 3.4),
                  //13 min teke
                ],
              ),
              //For Buttom Section

              ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.asset(
                            profileButtonIcon[index],
                            width: 22,
                          ),
                          title: profileButtonList[index]
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: lightGrey,
                        );
                      },
                      itemCount: profileButtonList.length)
                  .box
                  .white
                  .margin(const EdgeInsets.all(12))
                  .rounded
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
