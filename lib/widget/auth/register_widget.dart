import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../containts/colors.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  bool _isMale = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 20,),
          //TextField Họ và tên
          Container(
            height: 40,
            child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),

                    hintStyle: const TextStyle(
                        fontSize: 12
                    ),
                    hintText: 'Họ và tên',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.perm_identity, color: kTextColor,),
                    ),
                    suffixIcon: SizedBox(
                      height: 15,
                      width: 15,
                      child: Center( child: Text("*",
                        style: TextStyle(
                          color: Colors.red
                        )
                      )
                      ),

                    )

                )
            ),
          ),
          SizedBox(height: 10,),
          //TextField Email
          Container(
            height: 40,
            child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),

                    hintStyle: const TextStyle(
                        fontSize: 12
                    ),
                    hintText: 'Email',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.perm_identity, color: kTextColor,),
                    ),
                    suffixIcon: SizedBox(
                      height: 15,
                      width: 15,
                      child: Center( child: Text("*",
                          style: TextStyle(
                              color: Colors.red
                          )
                      )
                      ),

                    )

                )
            ),
          ),
          SizedBox(height: 10,),
          //TextField Số điện thoại
          Container(
            height: 40,
            child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),

                    hintStyle: const TextStyle(
                        fontSize: 12
                    ),
                    hintText: 'Số điện thoại',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.phone, color: kTextColor,),
                    ),
                    suffixIcon: SizedBox(
                      height: 15,
                      width: 15,
                      child: Center( child: Text("*",
                          style: TextStyle(
                              color: Colors.red
                          )
                      )
                      ),

                    )

                )
            ),
          ),
          SizedBox(height: 10,),
          // TextField mật khẩu
          Container(
            height: 40,
            child: TextField(
                textAlignVertical: TextAlignVertical.center,
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),

                    hintStyle: const TextStyle(
                        fontSize: 12
                    ),

                    hintText: 'Mật khẩu',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.lock, color: kTextColor,),
                    ),
                    suffixIcon: SizedBox(
                      height: 15,
                      width: 15,
                      child: Center( child: Text("*",
                          style: TextStyle(
                              color: Colors.red
                          )
                      )
                      ),

                    )

                )
            ),
          ),
          SizedBox(height: 10,),
          //TextField xác nhận mật khẩu
          Container(
            height: 40,
            child: TextField(
                textAlignVertical: TextAlignVertical.center,
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),

                    hintStyle: const TextStyle(
                        fontSize: 12
                    ),
                    hintText: 'Xác nhận mật khẩu',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.lock, color: kTextColor,),
                    ),
                    suffixIcon: SizedBox(
                      height: 15,
                      width: 15,
                      child: Center( child: Text("*",
                          style: TextStyle(
                              color: Colors.red
                          )
                      )
                      ),

                    )

                )
            ),
          ),
          SizedBox(height: 10,),
          // TextField Ngày sinh
          Container(
            height: 40,
            child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: kTextColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),

                    hintStyle: const TextStyle(
                        fontSize: 12
                    ),
                    hintText: 'Ngày sinh',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.calendar_today_rounded, color: kTextColor,),
                    ),

                )
            ),
          ),
          SizedBox(height: 5,),
          // CHọn giới tính
          Row(
            children: [
              Text("Giới tính"),
              Radio(
                  value: true,
                  groupValue: _isMale,
                  onChanged: (value){
                    setState(() {
                      _isMale = !_isMale;
                    });
                  },
                  activeColor: Color(0xffDFB400)),
              Text("Nam"),
              SizedBox(width: 20,),
              Radio(
                  value: false,
                  groupValue: _isMale,
                  onChanged: (value){
                    setState(() {
                      _isMale = !_isMale;
                    });
                  },
                  activeColor: Color(0xffDFB400)
              ),
              Text("Nữ")
            ],
          ),
          // Checkbox xác nhận nhận thông tin
          Row(
            children: [
              Checkbox(value: true, onChanged: (value){ }),
              SizedBox(width: 5.0),
              SizedBox(width: 250, child:
                Text("Nhận thông tin và chương trình khuyến mãi của Casynet qua email",
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                )
              )
            ],
          ),
          SizedBox(height: 0,),
          // Button tạo tài khoản
          ElevatedButton(
            onPressed: () {  },
            style: ElevatedButton.styleFrom(
                primary: kYellowColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.assignment_ind_outlined),
                SizedBox(width: 10.0,),
                Text("Tạo tài khoản",
                  style: TextStyle(

                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Khi bạn nhấn đăng ký, bạn đã đồng ý thực hiện mọi giao dịch mua bán theo ',
                  style: new TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'điều kiện sử dụng và chính  sách ',
                  style: new TextStyle(color: Colors.blue),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                    },
                ),
                TextSpan(
                  text: 'của Casynet',
                  style: new TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
