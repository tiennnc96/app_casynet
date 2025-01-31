
import 'package:app_casynet/controller/radio_car_controller.dart';
import 'package:app_casynet/screens/filter/filter_product.dart';
import 'package:app_casynet/widget/account/top_account_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widget/home/reservation_home_widget.dart';
import '../widget/bottom_widget.dart';
import '../widget/home/category_bottom_widget.dart';

class RuaXeThayDauPage extends StatefulWidget {
  const RuaXeThayDauPage({Key? key}) : super(key: key);

  @override
  State<RuaXeThayDauPage> createState() => _RuaXeThayDauPageState();
}

class _RuaXeThayDauPageState extends State<RuaXeThayDauPage> {
  RadioController radio_c = Get.put(RadioController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopAccountWidget(),
                Padding(padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Container(child: CircleAvatar(
                            child: Text(
                              "123",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                            backgroundColor: Color(0xffDFB400),
                          ),),
                          SizedBox(width: 15,),
                          Text(
                            "Rửa xe thay dầu",
                            style: TextStyle(
                                color: Color(0xffDFB400),
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/home/store/icon_filter.svg", width: 15,),
                            SizedBox(width: 5,),
                            Text(
                              " Bộ lọc",
                              style: TextStyle(
                                color: Color(0xffB7BAC1),
                              ),
                            ),
                            SizedBox(width: 10,)
                          ],
                        ),
                        onTap: (){
                          Get.to(FilterProductPage());
                        },
                      )

                    ],
                  ),
                ),

                SizedBox(height: 5, child: Container(color: Color(0xffF1F3FD),),),
                Obx(()=>Row(
                  children: [
                    Radio(
                        value: true,
                        groupValue: radio_c.isCar.value,
                        onChanged: (value){
                          radio_c.isCar.value = !radio_c.isCar.value;
                        },
                        activeColor: Color(0xffDFB400)),
                    Text("Ô tô"),
                    SizedBox(width: 20,),
                    Radio(
                        value: false,
                        groupValue: radio_c.isCar.value,
                        onChanged: (value){
                          radio_c.isCar.value = !radio_c.isCar.value;
                        },
                        activeColor: Color(0xffDFB400)
                    ),
                    Text("Xe máy")
                  ],
                ),),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    ItemBookWidget(
                        book_image: "assets/home/book/image.png",
                        distance: 4.5,
                        price: "1.290.000đ",
                        price_discount: "1.390.000đ",
                        book_name: "Máy rửa xe Catorex - CTR",
                        book_category: "Điện máy Đỗ Dũng"
                    ),
                    ItemBookWidget(
                        book_image: "assets/home/store/cuahang1.png",
                        distance: 4.5,
                        price: "1.290.000đ",
                        price_discount: "1.390.000đ",
                        book_name: "Máy rửa xe Catorex - CTR",
                        book_category: "Điện máy Đỗ Dũng"
                    ),
                    ItemBookWidget(
                        book_image: "assets/home/book/image.png",
                        distance: 4.5,
                        price: "1.290.000đ",
                        price_discount: "1.390.000đ",
                        book_name: "Máy rửa xe Catorex - CTR",
                        book_category: "Điện máy Đỗ Dũng"
                    ),
                    ItemBookWidget(
                        book_image: "assets/home/store/cuahang1.png",
                        distance: 4.5,
                        price: "1.290.000đ",
                        price_discount: "1.390.000đ",
                        book_name: "Máy rửa xe Catorex - CTR",
                        book_category: "Điện máy Đỗ Dũng"
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                CategoryBottomWidget(),
                BottomWidget(),
              ],
            ),
        )
      ),
    );
  }
}