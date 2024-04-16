
import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:circular_image/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolios/globals/app_asset.dart';
import 'package:flutter_web_portfolios/globals/app_color.dart';
import 'package:flutter_web_portfolios/helper-responsive-class/helperResponsive.dart';
import 'package:flutter_web_portfolios/views/About_me.dart';
import 'package:flutter_web_portfolios/views/contact.dart';
import 'package:flutter_web_portfolios/views/myPortfolio.dart';
import 'package:flutter_web_portfolios/views/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
final Uri facebookUrl = 'https://www.facebook.com/manish.paudel.9889/' as Uri;
final Uri instaUrl = 'https://www.instagram.com/themanish517/' as Uri;
final Uri linkedInUrl = 'https://www.linkedin.com/in/manish-paudel-8798541a9/' as Uri;
final Uri gitUrl = 'https://github.com/manish-290' as Uri;
final Uri insta = 'https://twitter.com/ManishCr3ator' as Uri;

// Future<void>  launchSocialMediaUrl(Uri url) async{
//   final  url = facebookUrl;
//   if(!await launchUrl(url as Uri ,
//   mode: LaunchMode.externalApplication)){
//     await launchUrl(url as Uri);
//   }else{
//     throw Exception('Could not launch $url');
//   }
// }

  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
          child: HelperClass(
              mobile:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width:20),
                  FadeInRight(
                      duration: Duration(milliseconds: 2000),
                      child: CircularImage(
                        radius: 120,
                        borderWidth: 2, source: 'assets/images/manish.jpg',)),
          
                  FadeInLeft(
                    duration: Duration(milliseconds: 1200),
                    child: Text("Hi there, It's Me.",style: GoogleFonts.lato(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color:Colors.white
                    ),),
                  ),SizedBox(height:12),
                  FadeInRight(
                    duration: Duration(milliseconds: 1400),
                    child: Text("Manish Paudel",style: GoogleFonts.aboreto(
                        fontSize: 35,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                        color:Colors.white
                    ),),
                  ),
                  SizedBox(height:12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInLeft(
                        duration: Duration(milliseconds: 1600),
                        child: Text("And I'm a ",style: GoogleFonts.lato(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color:Colors.white
                        ),),
                      ),
          
                      FadeInLeft(
                        duration: Duration(milliseconds: 1800),
                        child: AnimatedTextKit(
                          // totalRepeatCount: ,
                            repeatForever: true,
                            displayFullTextOnTap: true,
                            animatedTexts: [
                              TyperAnimatedText("Flutter developer",
                                  speed: Duration(milliseconds: 200),
                                  textStyle: GoogleFonts.lato(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      color:Color.fromARGB(255, 12, 230, 190)
                                  )),
                              TyperAnimatedText("Web developer",
                                  speed:Duration(milliseconds: 200),
                                  textStyle: GoogleFonts.lato(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      color:Color.fromARGB(255, 12, 230, 190)
                                  )),
                              TyperAnimatedText("Android developer",
                                  speed:Duration(milliseconds: 200),
                                  textStyle: GoogleFonts.lato(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      color:Color.fromARGB(255, 12, 230, 190)
                                  )),
                            ]),
                      ),
          
                    ],),
                  SizedBox(height: 15,),
                  FadeInDown(
                    duration: Duration(milliseconds: 2000),
                    child: Text("I am a skilled professional who specializes in creating cross-platform mobile applications using the Flutter framework. Flutter, developed by Google, is renowned for its efficiency in building visually appealing and high-performance applications for both Android and web platforms. A Flutter developer possesses expertise in Dart programming language, which is the foundation of Flutter, and is adept at utilizing Flutter's rich set of pre-designed widgets to create seamless user interfaces.",
                        style:GoogleFonts.lato(
                          fontSize:13,
                          color:Colors.white,
                        )),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInLeft(
                        duration: Duration(milliseconds: 1200),
                        child: CircleAvatar(
                            child: Icon(Icons.facebook,)),
                      ),
                      SizedBox(width: 10,),
                      FadeInLeft(
                        duration: Duration(milliseconds: 1400),
                        child: CircleAvatar(
                            radius: 20,
                            child: Image.asset(
                              AppAsset.insta,
                              fit: BoxFit.contain,
                            )),
                      ),SizedBox(width: 10,),
                      FadeInLeft(
                        duration: Duration(milliseconds: 1600),
                        child: CircleAvatar(
                            radius: 20,
                            child: Image.asset(AppAsset.github,fit:BoxFit.contain)),
                      ),
                      SizedBox(width: 10,),
                      FadeInLeft(
                        duration: Duration(milliseconds: 1800),
                        child: CircleAvatar(
                            radius: 20,
                            child: Image.asset(AppAsset.linkedin,scale:8,)),
                      ),
                      SizedBox(width: 10,),
                      FadeInLeft(
                        duration: Duration(milliseconds: 2000),
                        child: CircleAvatar(
                            radius: 20,
                            child: Image.asset(AppAsset.twitter,scale:8,)),
                      ),
                    ],),
                  SizedBox(height:20),
                  MaterialButton(
                    hoverColor: Color(0x2196F3FF),
                    // splashColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0)
                    ),
                    color: Colors.transparent,
                    onPressed: (){},
                    child: Text('Download resume',style:GoogleFonts.aboreto(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color:Colors.white
          
                    )),),
                  SizedBox(width: 20,),
                ],
              ),
              desktop: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FadeInLeft(
                        duration: Duration(milliseconds: 1200),
                        child: Text("Hi there, It's Me.",style: GoogleFonts.lato(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color:Colors.white
                        ),),
                      ),SizedBox(height:12),
                      FadeInRight(
                        duration: Duration(milliseconds: 1400),
                        child: Text("Manish Paudel",style: GoogleFonts.aboreto(
                            fontSize: 35,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w600,
                            color:Colors.white
                        ),),
                      ),
                      SizedBox(height:12),
                      Row(children: [
                        FadeInLeft(
                          duration: Duration(milliseconds: 1600),
                          child: Text("And I'm a ",style: GoogleFonts.lato(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color:Colors.white
                          ),),
                        ),

                        FadeInLeft(
                          duration: Duration(milliseconds: 1800),
                          child: AnimatedTextKit(
                            // totalRepeatCount: ,
                              repeatForever: true,
                              displayFullTextOnTap: true,
                              animatedTexts: [
                                TyperAnimatedText("Flutter developer",
                                    speed: Duration(milliseconds: 200),
                                    textStyle: GoogleFonts.lato(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color:Color.fromARGB(255, 12, 230, 190)
                                    )),
                                TyperAnimatedText("Web developer",
                                    speed:Duration(milliseconds: 200),
                                    textStyle: GoogleFonts.lato(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color:Color.fromARGB(255, 12, 230, 190)
                                    )),
                                TyperAnimatedText("Android developer",
                                    speed:Duration(milliseconds: 200),
                                    textStyle: GoogleFonts.lato(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color:Color.fromARGB(255, 12, 230, 190)
                                    )),
                              ]),
                        ),

                      ],),
                      SizedBox(height: 15,),
                      SizedBox(
                        width: size.width*0.4,
                        child: FadeInDown(
                          duration: Duration(milliseconds: 2000),
                          child: Text("I am a skilled professional who specializes in creating cross-platform mobile applications using the Flutter framework. Flutter, developed by Google, is renowned for its efficiency in building visually appealing and high-performance applications for both Android and web platforms. A Flutter developer possesses expertise in Dart programming language, which is the foundation of Flutter, and is adept at utilizing Flutter's rich set of pre-designed widgets to create seamless user interfaces.",
                              style:GoogleFonts.lato(
                                fontSize:13,
                                color:Colors.white,
                              )),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          FadeInLeft(
                            duration: Duration(milliseconds: 1200),
                            child: CircleAvatar(
                                child: Icon(Icons.facebook,)),
                          ),
                          SizedBox(width: 10,),
                          FadeInLeft(
                            duration: Duration(milliseconds: 1400),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.asset(
                                  AppAsset.insta,
                                  fit: BoxFit.contain,
                                )),
                          ),SizedBox(width: 10,),
                          FadeInLeft(
                            duration: Duration(milliseconds: 1600),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.asset(AppAsset.github,fit:BoxFit.contain)),
                          ),
                          SizedBox(width: 10,),
                          FadeInLeft(
                            duration: Duration(milliseconds: 1800),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.asset(AppAsset.linkedin,scale:8,)),
                          ),
                          SizedBox(width: 10,),
                          FadeInLeft(
                            duration: Duration(milliseconds: 2000),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.asset(AppAsset.twitter,scale:8,)),
                          ),
                        ],),
                      SizedBox(height:20),
                      MaterialButton(
                        hoverColor: Color(0x2196F3FF),
                        // splashColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0)
                        ),
                        color: Colors.transparent,
                        onPressed: (){},
                        child: Text('Download resume',style:GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color:Colors.white

                        )),)
                    ],
                  ),
                  SizedBox(width:20),
                  FadeInRight(
                      duration: Duration(milliseconds: 2000),
                      child: CircularImage(
                        radius: 120,
                        borderWidth: 2, source: 'assets/images/manish.jpg',))
                ],
              ),
              tablet: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FadeInLeft(
                          duration: Duration(milliseconds: 1200),
                          child: Text("Hi there, It's Me.",style: GoogleFonts.lato(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color:Colors.white
                          ),),
                        ),SizedBox(height:12),
                        FadeInRight(
                          duration: Duration(milliseconds: 1400),
                          child: Text("Manish Paudel",style: GoogleFonts.aboreto(
                              fontSize: 35,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w600,
                              color:Colors.white
                          ),),
                        ),
                        SizedBox(height:12),
                        Row(children: [
                          FadeInLeft(
                            duration: Duration(milliseconds: 1600),
                            child: Text("And I'm a ",style: GoogleFonts.lato(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                color:Colors.white
                            ),),
                          ),
                    
                          FadeInLeft(
                            duration: Duration(milliseconds: 1800),
                            child: AnimatedTextKit(
                              // totalRepeatCount: ,
                                repeatForever: true,
                                displayFullTextOnTap: true,
                                animatedTexts: [
                                  TyperAnimatedText("Flutter developer",
                                      speed: Duration(milliseconds: 200),
                                      textStyle: GoogleFonts.lato(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color:Color.fromARGB(255, 12, 230, 190)
                                      )),
                                  TyperAnimatedText("Web developer",
                                      speed:Duration(milliseconds: 200),
                                      textStyle: GoogleFonts.lato(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color:Color.fromARGB(255, 12, 230, 190)
                                      )),
                                  TyperAnimatedText("Android developer",
                                      speed:Duration(milliseconds: 200),
                                      textStyle: GoogleFonts.lato(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color:Color.fromARGB(255, 12, 230, 190)
                                      )),
                                ]),
                          ),
                    
                        ],),
                        SizedBox(height: 15,),
                        SizedBox(
                          width: size.width*0.4,
                          child: FadeInDown(
                            duration: Duration(milliseconds: 2000),
                            child: Text("I am a skilled professional who specializes in creating cross-platform mobile applications using the Flutter framework. Flutter, developed by Google, is renowned for its efficiency in building visually appealing and high-performance applications for both Android and web platforms. A Flutter developer possesses expertise in Dart programming language, which is the foundation of Flutter, and is adept at utilizing Flutter's rich set of pre-designed widgets to create seamless user interfaces.",
                                style:GoogleFonts.lato(
                                  fontSize:13,
                                  color:Colors.white,
                                )),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            FadeInLeft(
                              duration: Duration(milliseconds: 1200),
                              child: CircleAvatar(
                                  child: Icon(Icons.facebook,)),
                            ),
                            SizedBox(width: 10,),
                            FadeInLeft(
                              duration: Duration(milliseconds: 1400),
                              child: CircleAvatar(
                                  radius: 20,
                                  child: Image.asset(
                                    AppAsset.insta,
                                    fit: BoxFit.contain,
                                  )),
                            ),SizedBox(width: 10,),
                            FadeInLeft(
                              duration: Duration(milliseconds: 1600),
                              child: CircleAvatar(
                                  radius: 20,
                                  child: Image.asset(AppAsset.github,fit:BoxFit.contain)),
                            ),
                            SizedBox(width: 10,),
                            FadeInLeft(
                              duration: Duration(milliseconds: 1800),
                              child: CircleAvatar(
                                  radius: 20,
                                  child: Image.asset(AppAsset.linkedin,scale:8,)),
                            ),
                            SizedBox(width: 10,),
                            FadeInLeft(
                              duration: Duration(milliseconds: 2000),
                              child: CircleAvatar(
                                  radius: 20,
                                  child: Image.asset(AppAsset.twitter,scale:8,)),
                            ),
                          ],),
                        SizedBox(height:20),
                        MaterialButton(
                          hoverColor: Color(0x2196F3FF),
                          // splashColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0)
                          ),
                          color: Colors.transparent,
                          onPressed: (){},
                          child: Text('Download resume',style:GoogleFonts.aboreto(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color:Colors.white
                    
                          )),)
                      ],
                    ),
                  ),
                  SizedBox(width:20),
                  FadeInRight(
                      duration: Duration(milliseconds: 2000),
                      child: CircularImage(
                        radius: 120,
                        borderWidth: 2, source: 'assets/images/manish.jpg',))
                ],
              )),
        );

        // LayoutBuilder(
        //
        //   builder: (context, constraints) {
        //     if(constraints.maxWidth < 568){
        //       return SingleChildScrollView(
        //         child:
        //       );
        //
        //       //   ],
        //       // );
        //     }else{
        //       return Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         crossAxisAlignment: CrossAxisAlignment.end,
        //         children: [
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               FadeInLeft(
        //                 duration: Duration(milliseconds: 1200),
        //                 child: Text("Hi there, It's Me.",style: GoogleFonts.lato(
        //                     fontSize: 21,
        //                     fontWeight: FontWeight.w600,
        //                     color:Colors.white
        //                 ),),
        //               ),SizedBox(height:12),
        //               FadeInRight(
        //                 duration: Duration(milliseconds: 1400),
        //                 child: Text("Manish Paudel",style: GoogleFonts.aboreto(
        //                     fontSize: 35,
        //                     letterSpacing: 1.5,
        //                     fontWeight: FontWeight.w600,
        //                     color:Colors.white
        //                 ),),
        //               ),
        //               SizedBox(height:12),
        //               Row(children: [
        //                 FadeInLeft(
        //                   duration: Duration(milliseconds: 1600),
        //                   child: Text("And I'm a ",style: GoogleFonts.lato(
        //                       fontSize: 21,
        //                       fontWeight: FontWeight.w600,
        //                       color:Colors.white
        //                   ),),
        //                 ),
        //
        //                 FadeInLeft(
        //                   duration: Duration(milliseconds: 1800),
        //                   child: AnimatedTextKit(
        //                     // totalRepeatCount: ,
        //                       repeatForever: true,
        //                       displayFullTextOnTap: true,
        //                       animatedTexts: [
        //                         TyperAnimatedText("Flutter developer",
        //                             speed: Duration(milliseconds: 200),
        //                             textStyle: GoogleFonts.lato(
        //                                 fontSize: 21,
        //                                 fontWeight: FontWeight.w600,
        //                                 color:Color.fromARGB(255, 12, 230, 190)
        //                             )),
        //                         TyperAnimatedText("Web developer",
        //                             speed:Duration(milliseconds: 200),
        //                             textStyle: GoogleFonts.lato(
        //                                 fontSize: 21,
        //                                 fontWeight: FontWeight.w600,
        //                                 color:Color.fromARGB(255, 12, 230, 190)
        //                             )),
        //                         TyperAnimatedText("Android developer",
        //                             speed:Duration(milliseconds: 200),
        //                             textStyle: GoogleFonts.lato(
        //                                 fontSize: 21,
        //                                 fontWeight: FontWeight.w600,
        //                                 color:Color.fromARGB(255, 12, 230, 190)
        //                             )),
        //                       ]),
        //                 ),
        //
        //               ],),
        //               SizedBox(height: 15,),
        //               SizedBox(
        //                 width: size.width*0.4,
        //                 child: FadeInDown(
        //                   duration: Duration(milliseconds: 2000),
        //                   child: Text("I am a skilled professional who specializes in creating cross-platform mobile applications using the Flutter framework. Flutter, developed by Google, is renowned for its efficiency in building visually appealing and high-performance applications for both Android and web platforms. A Flutter developer possesses expertise in Dart programming language, which is the foundation of Flutter, and is adept at utilizing Flutter's rich set of pre-designed widgets to create seamless user interfaces.",
        //                       style:GoogleFonts.lato(
        //                         fontSize:13,
        //                         color:Colors.white,
        //                       )),
        //                 ),
        //               ),
        //               SizedBox(height: 15,),
        //               Row(
        //                 children: [
        //                   FadeInLeft(
        //                     duration: Duration(milliseconds: 1200),
        //                     child: CircleAvatar(
        //                         child: Icon(Icons.facebook,)),
        //                   ),
        //                   SizedBox(width: 10,),
        //                   FadeInLeft(
        //                     duration: Duration(milliseconds: 1400),
        //                     child: CircleAvatar(
        //                         radius: 20,
        //                         child: Image.asset(
        //                           AppAsset.insta,
        //                           fit: BoxFit.contain,
        //                         )),
        //                   ),SizedBox(width: 10,),
        //                   FadeInLeft(
        //                     duration: Duration(milliseconds: 1600),
        //                     child: CircleAvatar(
        //                         radius: 20,
        //                         child: Image.asset(AppAsset.github,fit:BoxFit.contain)),
        //                   ),
        //                   SizedBox(width: 10,),
        //                   FadeInLeft(
        //                     duration: Duration(milliseconds: 1800),
        //                     child: CircleAvatar(
        //                         radius: 20,
        //                         child: Image.asset(AppAsset.linkedin,scale:8,)),
        //                   ),
        //                   SizedBox(width: 10,),
        //                   FadeInLeft(
        //                     duration: Duration(milliseconds: 2000),
        //                     child: CircleAvatar(
        //                         radius: 20,
        //                         child: Image.asset(AppAsset.twitter,scale:8,)),
        //                   ),
        //                 ],),
        //               SizedBox(height:20),
        //               MaterialButton(
        //                 hoverColor: Color(0x2196F3FF),
        //                 // splashColor: Colors.green,
        //                 padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        //                 shape: OutlineInputBorder(
        //                     borderRadius: BorderRadius.circular(14.0)
        //                 ),
        //                 color: Colors.transparent,
        //                 onPressed: (){},
        //                 child: Text('Download resume',style:GoogleFonts.aboreto(
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 10,
        //                     color:Colors.white
        //
        //                 )),)
        //             ],
        //           ),
        //           SizedBox(width:20),
        //           FadeInRight(
        //               duration: Duration(milliseconds: 2000),
        //               child: CircularImage(
        //                 radius: 120,
        //                 borderWidth: 2, source: 'assets/images/manish.jpg',))
        //         ],
        //       );
        //     }
        //
        //   }
        // ),



      // SingleChildScrollView(
      //   padding: EdgeInsets.only(
      //       top:size.height*0.05,
      //       // left:size.width*0.1,
      //       // right:size.width*0.1
      //   ),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       //here is row
      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       //   crossAxisAlignment: CrossAxisAlignment.center,
      //       //   children: [
      //       //     Column(
      //       //       crossAxisAlignment: CrossAxisAlignment.start,
      //       //       children: [
      //       //         FadeInLeft(
      //       //           duration: Duration(milliseconds: 1200),
      //       //           child: Text("Hi there, It's Me.",style: GoogleFonts.lato(
      //       //               fontSize: 21,
      //       //               fontWeight: FontWeight.w600,
      //       //               color:Colors.white
      //       //           ),),
      //       //         ),SizedBox(height:12),
      //       //         FadeInRight(
      //       //           duration: Duration(milliseconds: 1400),
      //       //           child: Text("Manish Paudel",style: GoogleFonts.aboreto(
      //       //               fontSize: 35,
      //       //               letterSpacing: 1.5,
      //       //               fontWeight: FontWeight.w600,
      //       //               color:Colors.white
      //       //           ),),
      //       //         ),
      //       //         SizedBox(height:12),
      //       //         Row(children: [
      //       //           FadeInLeft(
      //       //             duration: Duration(milliseconds: 1600),
      //       //             child: Text("And I'm a ",style: GoogleFonts.lato(
      //       //                 fontSize: 21,
      //       //                 fontWeight: FontWeight.w600,
      //       //                 color:Colors.white
      //       //             ),),
      //       //           ),
      //       //
      //       //           FadeInLeft(
      //       //             duration: Duration(milliseconds: 1800),
      //       //             child: AnimatedTextKit(
      //       //               // totalRepeatCount: ,
      //       //                 repeatForever: true,
      //       //                 displayFullTextOnTap: true,
      //       //                 animatedTexts: [
      //       //                   TyperAnimatedText("Flutter developer",
      //       //                       speed: Duration(milliseconds: 200),
      //       //                       textStyle: GoogleFonts.lato(
      //       //                           fontSize: 21,
      //       //                           fontWeight: FontWeight.w600,
      //       //                           color:Color.fromARGB(255, 12, 230, 190)
      //       //                       )),
      //       //                   TyperAnimatedText("Web developer",
      //       //                       speed:Duration(milliseconds: 200),
      //       //                       textStyle: GoogleFonts.lato(
      //       //                           fontSize: 21,
      //       //                           fontWeight: FontWeight.w600,
      //       //                           color:Color.fromARGB(255, 12, 230, 190)
      //       //                       )),
      //       //                   TyperAnimatedText("Android developer",
      //       //                       speed:Duration(milliseconds: 200),
      //       //                       textStyle: GoogleFonts.lato(
      //       //                           fontSize: 21,
      //       //                           fontWeight: FontWeight.w600,
      //       //                           color:Color.fromARGB(255, 12, 230, 190)
      //       //                       )),
      //       //                 ]),
      //       //           ),
      //       //
      //       //         ],),
      //       //         SizedBox(height: 15,),
      //       //         SizedBox(
      //       //           width: size.width*0.4,
      //       //           child: FadeInDown(
      //       //             duration: Duration(milliseconds: 2000),
      //       //             child: Text("I am a skilled professional who specializes in creating cross-platform mobile applications using the Flutter framework. Flutter, developed by Google, is renowned for its efficiency in building visually appealing and high-performance applications for both Android and web platforms. A Flutter developer possesses expertise in Dart programming language, which is the foundation of Flutter, and is adept at utilizing Flutter's rich set of pre-designed widgets to create seamless user interfaces.",
      //       //                 style:GoogleFonts.lato(
      //       //                   fontSize:13,
      //       //                   color:Colors.white,
      //       //                 )),
      //       //           ),
      //       //         ),
      //       //         SizedBox(height: 15,),
      //       //         Row(
      //       //           children: [
      //       //             FadeInLeft(
      //       //               duration: Duration(milliseconds: 1200),
      //       //               child: CircleAvatar(
      //       //                   child: Icon(Icons.facebook,)),
      //       //             ),
      //       //             SizedBox(width: 10,),
      //       //             FadeInLeft(
      //       //               duration: Duration(milliseconds: 1400),
      //       //               child: CircleAvatar(
      //       //                   radius: 20,
      //       //                   child: Image.asset(
      //       //                     AppAsset.insta,
      //       //                     fit: BoxFit.contain,
      //       //                   )),
      //       //             ),SizedBox(width: 10,),
      //       //             FadeInLeft(
      //       //               duration: Duration(milliseconds: 1600),
      //       //               child: CircleAvatar(
      //       //                   radius: 20,
      //       //                   child: Image.asset(AppAsset.github,fit:BoxFit.contain)),
      //       //             ),
      //       //             SizedBox(width: 10,),
      //       //             FadeInLeft(
      //       //               duration: Duration(milliseconds: 1800),
      //       //               child: CircleAvatar(
      //       //                   radius: 20,
      //       //                   child: Image.asset(AppAsset.linkedin,scale:8,)),
      //       //             ),
      //       //             SizedBox(width: 10,),
      //       //             FadeInLeft(
      //       //               duration: Duration(milliseconds: 2000),
      //       //               child: CircleAvatar(
      //       //                   radius: 20,
      //       //                   child: Image.asset(AppAsset.twitter,scale:8,)),
      //       //             ),
      //       //           ],),
      //       //         SizedBox(height:20),
      //       //         MaterialButton(
      //       //           hoverColor: Color(0x2196F3FF),
      //       //           // splashColor: Colors.green,
      //       //           padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      //       //           shape: OutlineInputBorder(
      //       //               borderRadius: BorderRadius.circular(14.0)
      //       //           ),
      //       //           color: Colors.transparent,
      //       //           onPressed: (){},
      //       //           child: Text('Download resume',style:GoogleFonts.aboreto(
      //       //               fontWeight: FontWeight.bold,
      //       //               fontSize: 10,
      //       //               color:Colors.white
      //       //
      //       //           )),)
      //       //       ],
      //       //     ),
      //       //     SizedBox(width:20),
      //       //     FadeInRight(
      //       //         duration: Duration(milliseconds: 2000),
      //       //         child: CircularImage(
      //       //           radius: 120,
      //       //           borderWidth: 2, source: 'assets/images/manish.jpg',))
      //       //   ],
      //       // ),
      //       SizedBox(height: 50,),
      //       AboutMe(),
      //       SizedBox(height: 100,),
      //       Services(),
      //       SizedBox(height: 100,),
      //       MyPortfolio(),
      //       SizedBox(height: 100,),
      //       Contact(),
      //       SizedBox(height: 100,),
      //
      //     ],
      //   ),
      // ),

  }
}
