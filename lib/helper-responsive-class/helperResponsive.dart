import 'package:flutter/material.dart';

import '../globals/app_color.dart';

class HelperClass extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const HelperClass({super.key,
  required this.mobile,
  required this.desktop,
  required this.tablet});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth < 768){
            return Container(
              color: AppColor.bgColor,
              height: size.height,
              width:size.width,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  vertical: 35,horizontal: size.width * 0.03
              ),
              child:mobile
            );

          }else if(constraints.maxWidth <1200 ){
            return Container(
                color: AppColor.bgColor,
                height: size.height,
                width:size.width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    vertical: size.height *0.002,horizontal: size.width * 0.03
                ),
                child:tablet
            );

          }else{
            return Container(
                color: AppColor.bgColor,
                height: size.height,
                width:size.width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    vertical: size.height*0.002,horizontal: size.width * 0.03
                ),
                child:desktop
            );
          }
        });
  }
}
