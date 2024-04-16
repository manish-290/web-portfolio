import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:circular_image/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolios/globals/app_color.dart';
import 'package:flutter_web_portfolios/helper-responsive-class/helperResponsive.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        mobile: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Container(
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors: [
                  AppColor.bgColor.withOpacity(0.4),
                  AppColor.greenAnimate.withOpacity(0.4)
                ]),
                boxShadow: [BoxShadow(
                    color: Colors.black,
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(3.0,4.5)
                )]
            ),
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: CircularImage(
                      borderWidth: 2,
                      borderColor: Colors.blue,
                      radius: 80,
                      source: 'assets/images/manish.jpg'),
                ),
                buildAboutMeContents()
              ],
            ),
          ),
        ),
        desktop: Container(
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [
                AppColor.bgColor.withOpacity(0.4),
                AppColor.greenAnimate.withOpacity(0.4)
              ]),
              boxShadow: [BoxShadow(
                  color: Colors.black,
                  spreadRadius: 4.0,
                  blurRadius: 4.5,
                  offset: Offset(3.0,4.5)
              )]
          ),
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: CircularImage(
                    borderWidth: 2,
                    borderColor: Colors.blue,
                    radius: 80,
                    source: 'assets/images/manish.jpg'),
              ),
              buildAboutMeContents()
            ],
          ),
        ),
        tablet: Container(
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [
                AppColor.bgColor.withOpacity(0.4),
                AppColor.greenAnimate.withOpacity(0.4)
              ]),
              boxShadow: [BoxShadow(
                  color: Colors.black,
                  spreadRadius: 4.0,
                  blurRadius: 4.5,
                  offset: Offset(3.0,4.5)
              )]
          ),
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: CircularImage(
                    borderWidth: 2,
                    borderColor: Colors.blue,
                    radius: 80,
                    source: 'assets/images/manish.jpg'),
              ),
              buildAboutMeContents()
            ],
          ),
        ));
  }

  Expanded buildAboutMeContents() {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text('About Me! ',style:GoogleFonts.lato(
                color:Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              )),SizedBox(height: 15,),
              AnimatedTextKit(
                repeatForever: true,
                  animatedTexts: [
                TyperAnimatedText('Flutter developer',speed:Duration(milliseconds: 400),
                    textStyle: GoogleFonts.lato(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color:Color.fromARGB(255, 12, 230, 190)
                    ))
              ]),

                SizedBox(height: 15,),
              Text("I am a skilled professional who specializes in creating cross-platform mobile applications using the Flutter framework. Flutter, developed by Google, is renowned for its efficiency in building visually appealing and high-performance applications for both Android and web platforms. A Flutter developer possesses expertise in Dart programming language, which is the foundation of Flutter, and is adept at utilizing Flutter's rich set of pre-designed widgets to create seamless user interfaces.",
                  style:GoogleFonts.lato(
                  color:Colors.white,
                  fontSize: 12,
              )),
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: FadeInUp(
                    duration: Duration(seconds: 3),
                    child: MaterialButton(
                      elevation: 10,
                      hoverColor: Colors.tealAccent,
                      color: AppColor.greenAnimate,
                        colorBrightness: Brightness.light,
                        onPressed: (){},
                    child: Text("Read More",style: TextStyle(
                      color:Colors.black,
                      fontWeight: FontWeight.bold
                    ),),),
                  ),
                )
            ],),
          ),
        );
  }
}
