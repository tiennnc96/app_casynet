
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../containts.dart';




class TopAccount extends StatelessWidget {
  const TopAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                  child: SvgPicture.asset(
                    "assets/home/icon_top_home.svg",
                    width: 40,
                  )
              )
          ),
          Flexible(
            flex: 6,
            fit: FlexFit.tight,
            child: Container(
              height: 35,
              child:  TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 11
                    ),
                    hintText: 'Search Casynet',
                    prefixIcon: SizedBox(width: 50, child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: kYellowColor,),
                        const Text("|",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                              color: Color(0xffAAAAAA)
                          ),),
                      ],
                    )
                ),),

                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("|",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffAAAAAA)
                            ),),
                          const SizedBox(width: 2.0,),
                          SvgPicture.asset(
                              "assets/home/icon_location.svg",
                              width: 14),
                          const SizedBox(width: 5.0,),
                          const Text(
                            "Hà Nội",
                          ),
                          const SizedBox(width: 5.0,),
                        ],
                      ),
                    )
                ),
              ),
            ),
          ),
          Flexible(
              flex: 1 ,
              fit: FlexFit.tight,
              child: Center(child: Text("VN")
              )
          )
        ],
      ),
    );

  }
}
