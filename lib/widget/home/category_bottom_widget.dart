import 'package:app_casynet/screens/rua_xe_thay_dau.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../containts/colors.dart';

class CategoryBottomWidget extends StatelessWidget {
  const CategoryBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Wrap(
          runSpacing: 10,
          spacing: 0,
          runAlignment: WrapAlignment.center,
          children: [
            CategoryItemBottom(
                images_url: "assets/home/category/bt_ruaxethaydau.svg",
                name: "Rửa xe thay dầu"),
            CategoryItemBottom(
                images_url: "assets/home/category/bt_suachuaxe.svg",
                name: "Sửa chữa xe"),
            CategoryItemBottom(
                images_url: "assets/home/category/bt_dochoiphukien.svg",
                name: "Đồ chơi, phụ kiện xe"),
            CategoryItemBottom(
                images_url: "assets/home/category/bt_muabanxe.svg",
                name: "Mua bán xe"),
            CategoryItemBottom(
                images_url: "assets/home/category/bt_chamsocxe.svg",
                name: "Chăm sóc xe"),
            CategoryItemBottom(
                images_url: "assets/home/category/bt_lopacquy.svg",
                name: "Lốp và ác quy xe"),
          ]),
    );
  }
}

class CategoryItemBottom extends StatelessWidget {
  final String images_url;
  final String name;

  const CategoryItemBottom(
      {Key? key, required this.images_url, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: LayoutBuilder(
            builder: (context, constraint) => Container(
                width: constraint.maxWidth / 2 - 10,
                height: 42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(width: 1, color: kYellowColor)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            SvgPicture.asset(
                              "assets/home/category/left_bottom.svg",
                              height: 40,
                            ),
                            Positioned(
                                left: 10,
                                top: 10,
                                child: SvgPicture.asset(images_url, height: 16))
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          name,
                          style: TextStyle(color: kTextColor_gray, fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ))),
      ),
      onTap: (){
        switch(name){
          case "Rửa xe thay dầu": Get.to(RuaXeThayDauPage());
          break;
        }
      },
    );
  }
}
