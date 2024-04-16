import 'package:flutter/material.dart';
import 'package:flutter_web_portfolios/globals/app_color.dart';
import 'package:flutter_web_portfolios/helper-responsive-class/helperResponsive.dart';
import 'package:google_fonts/google_fonts.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool isHovered = false;
  bool isHoveredWeb = false;
  final onHoverActive = Matrix4.identity()..translate(-10,-15,0);
  final onHoverRemove = Matrix4.identity()..translate(0,0,0);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        mobile:  SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('OUR ',style:GoogleFonts.lato(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    letterSpacing: 6.0
                  )),
                  Text('SERVICES',style:GoogleFonts.lato(
                      color:AppColor.greenAnimate,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      letterSpacing: 6.0
                  )),
                ],),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //1st conatiner for web development
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:30.0,horizontal: 12),
                    child: MouseRegion(
                      onEnter: (value){
                        setState(() {
                          isHovered = true;
                        });
                      },
                      onExit: (value){
                        setState(() {
                          isHovered = false;
                        });
                      },
                      child: Container(
                          transform: isHovered?onHoverActive:onHoverRemove,
                          height: 270,
                          width: 220,
                          decoration: BoxDecoration(
                              color: isHovered? AppColor.bgColor :Colors.grey[300]?.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(30),
                              border: isHovered? Border.all(color:Colors.white,width: 2):null,
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
                          child:Column(
                            children: [
                              Text("</>",style:GoogleFonts.lato(
                                  color:AppColor.greenAnimate,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26
                              )),
                              Text("Web development",style:GoogleFonts.lato(
                                  color:Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              )),SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0),
                                child: Text("Web development is a multifaceted discipline encompassing the creation and maintenance of websites and web applications.It involves a combination of frontend and backend technologies to deliver seamless, visually appealing, and functional online experiences.",
                                    style:GoogleFonts.lato(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12
                                    )),
                              ),SizedBox(height: 8,),
                              MaterialButton(
                                colorBrightness: Brightness.light,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                color: AppColor.greenAnimate,
                                hoverColor: Colors.tealAccent,
                                elevation: 10,
                                onPressed: (){},
                                child: Text("Read More",style:GoogleFonts.lato(
                                    fontWeight: FontWeight.bold
                                )),)
                            ],)
                      ),
                    ),
                  ),
                  //second container for android development
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:15.0,horizontal: 12),
                    child: MouseRegion(
                      onEnter: (value){
                        setState(() {
                          isHoveredWeb = true;
                        });
                      },
                      onExit: (value){
                        setState(() {
                          isHoveredWeb = false;
                        });
                      },
                      child: Container(
                          transform: isHoveredWeb?onHoverActive:onHoverRemove,
                          height: size.height<568 ? 350:270,
                          width: 220,
                          decoration: BoxDecoration(
                              color: isHoveredWeb? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(30),
                              border: isHoveredWeb? Border.all(color:Colors.white,width: 2):null,
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
                          child:AnimatedContainer(
                            duration: Duration(seconds: 10),
                            child: Column(
                              children: [
                                Icon(Icons.android,
                                  color: AppColor.greenAnimate,
          
                                  size: 29,),
          
                                Text("Android development",style:GoogleFonts.lato(
                                    color:Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left:10.0,right:10.0),
                                  child: Text("When you're developing Android app using Flutter, you're leveraging the Flutter framework to build cross-platform mobile apps with a single codebase. Flutter is known for its  flexible UI, hot-reload feature, and the ability to compile to native ARM code, providing high-performance applications.",
                                      style:GoogleFonts.lato(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12
                                      )),
                                ),SizedBox(height: 8,),
                                MaterialButton(
                                  colorBrightness: Brightness.light,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  color: AppColor.greenAnimate,
                                  hoverColor: Colors.tealAccent,
                                  elevation: 10,
                                  onPressed: (){},
                                  child: Text("Read More",style:GoogleFonts.lato(
                                      fontWeight: FontWeight.bold
                                  )),)
                              ],),
                          )
                      ),
                    ),
                  ),
          
                ],)
          
            ],
          ),
        ),
        desktop:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('OUR ',style:GoogleFonts.lato(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    letterSpacing: 6.0
                  )),
                  Text('SERVICES',style:GoogleFonts.lato(
                      color:AppColor.greenAnimate,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    letterSpacing: 6
                  )),
                ],),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //1st conatiner for web development
                MouseRegion(
                  onEnter: (value){
                    setState(() {
                      isHovered = true;
                    });
                  },
                  onExit: (value){
                    setState(() {
                      isHovered = false;
                    });
                  },
                  child: Container(
                      transform: isHovered?onHoverActive:onHoverRemove,
                      height: 270,
                      width: 220,
                      decoration: BoxDecoration(
                          color: isHovered? AppColor.bgColor :Colors.grey[300]?.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(30),
                          border: isHovered? Border.all(color:Colors.white,width: 2):null,
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
                      child:Column(
                        children: [
                          Text("</>",style:GoogleFonts.lato(
                              color:AppColor.greenAnimate,
                              fontWeight: FontWeight.bold,
                              fontSize: 26
                          )),
                          Text("Web development",style:GoogleFonts.lato(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          )),SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0,right:10.0),
                            child: Text("Web development is a multifaceted discipline encompassing the creation and maintenance of websites and web applications.It involves a combination of frontend and backend technologies to deliver seamless, visually appealing, and functional online experiences.",
                                style:GoogleFonts.lato(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12
                                )),
                          ),SizedBox(height: 8,),
                          MaterialButton(
                            colorBrightness: Brightness.light,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            color: AppColor.greenAnimate,
                            hoverColor: Colors.tealAccent,
                            elevation: 10,
                            onPressed: (){},
                            child: Text("Read More",style:GoogleFonts.lato(
                                fontWeight: FontWeight.bold
                            )),)
                        ],)
                  ),
                ),
                SizedBox(width: 30,),
                //second container for android development
                MouseRegion(
                  onEnter: (value){
                    setState(() {
                      isHoveredWeb = true;
                    });
                  },
                  onExit: (value){
                    setState(() {
                      isHoveredWeb = false;
                    });
                  },
                  child: Container(
                      transform: isHoveredWeb?onHoverActive:onHoverRemove,
                      height: 270,
                      width: 220,
                      decoration: BoxDecoration(
                          color: isHoveredWeb? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(30),
                          border: isHoveredWeb? Border.all(color:Colors.white,width: 2):null,
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
                      child:Column(
                        children: [
                          Icon(Icons.android,
                            color: AppColor.greenAnimate,

                            size: 29,),

                          Text("Android development",style:GoogleFonts.lato(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          )),SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0,right:10.0),
                            child: Text("When you're developing Android app using Flutter, you're leveraging the Flutter framework to build cross-platform mobile apps with a single codebase. Flutter is known for its  flexible UI, hot-reload feature, and the ability to compile to native ARM code, providing high-performance applications.",
                                style:GoogleFonts.lato(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12
                                )),
                          ),SizedBox(height: 8,),
                          MaterialButton(
                            colorBrightness: Brightness.light,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            color: AppColor.greenAnimate,
                            hoverColor: Colors.tealAccent,
                            elevation: 10,
                            onPressed: (){},
                            child: Text("Read More",style:GoogleFonts.lato(
                                fontWeight: FontWeight.bold
                            )),)
                        ],)
                  ),
                ),

              ],)

          ],
        ),
        tablet:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('OUR ',style:GoogleFonts.lato(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      letterSpacing: 6.0
                  )),
                  Text('SERVICES',style:GoogleFonts.lato(
                      color:AppColor.greenAnimate,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      letterSpacing: 6.0
                  )),
                ],),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //1st conatiner for web development
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:30.0,horizontal: 12),
                  child: MouseRegion(
                    onEnter: (value){
                      setState(() {
                        isHovered = true;
                      });
                    },
                    onExit: (value){
                      setState(() {
                        isHovered = false;
                      });
                    },
                    child: Container(
                        transform: isHovered?onHoverActive:onHoverRemove,
                        height: 270,
                        width: 220,
                        decoration: BoxDecoration(
                            color: isHovered? AppColor.bgColor :Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(30),
                            border: isHovered? Border.all(color:Colors.white,width: 2):null,
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
                        child:Column(
                          children: [
                            Text("</>",style:GoogleFonts.lato(
                                color:AppColor.greenAnimate,
                                fontWeight: FontWeight.bold,
                                fontSize: 26
                            )),
                            Text("Web development",style:GoogleFonts.lato(
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            )),SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0,right:10.0),
                              child: Text("Web development is a multifaceted discipline encompassing the creation and maintenance of websites and web applications.It involves a combination of frontend and backend technologies to deliver seamless, visually appealing, and functional online experiences.",
                                  style:GoogleFonts.lato(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12
                                  )),
                            ),SizedBox(height: 8,),
                            MaterialButton(
                              colorBrightness: Brightness.light,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              color: AppColor.greenAnimate,
                              hoverColor: Colors.tealAccent,
                              elevation: 10,
                              onPressed: (){},
                              child: Text("Read More",style:GoogleFonts.lato(
                                  fontWeight: FontWeight.bold
                              )),)
                          ],)
                    ),
                  ),
                ),
                //second container for android development
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:30.0,horizontal: 12),
                  child: MouseRegion(
                    onEnter: (value){
                      setState(() {
                        isHoveredWeb = true;
                      });
                    },
                    onExit: (value){
                      setState(() {
                        isHoveredWeb = false;
                      });
                    },
                    child: Container(
                        transform: isHoveredWeb?onHoverActive:onHoverRemove,
                        height: 270,
                        width: 220,
                        decoration: BoxDecoration(
                            color: isHoveredWeb? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(30),
                            border: isHoveredWeb? Border.all(color:Colors.white,width: 2):null,
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
                        child:AnimatedContainer(
                          duration: Duration(seconds: 10),
                          child: Column(
                            children: [
                              Icon(Icons.android,
                                color: AppColor.greenAnimate,

                                size: 29,),

                              Text("Android development",style:GoogleFonts.lato(
                                  color:Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              )),SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left:10.0,right:10.0),
                                child: Text("When you're developing Android app using Flutter, you're leveraging the Flutter framework to build cross-platform mobile apps with a single codebase. Flutter is known for its  flexible UI, hot-reload feature, and the ability to compile to native ARM code, providing high-performance applications.",
                                    style:GoogleFonts.lato(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12
                                    )),
                              ),SizedBox(height: 8,),
                              MaterialButton(
                                colorBrightness: Brightness.light,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                color: AppColor.greenAnimate,
                                hoverColor: Colors.tealAccent,
                                elevation: 10,
                                onPressed: (){},
                                child: Text("Read More",style:GoogleFonts.lato(
                                    fontWeight: FontWeight.bold
                                )),)
                            ],),
                        )
                    ),
                  ),
                ),

              ],)

          ],
        ));


    // return Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //       Text('Our ',style:GoogleFonts.lato(
    //         color:Colors.white,
    //         fontWeight: FontWeight.bold,
    //         fontSize: 28
    //       )),
    //       Text('Services',style:GoogleFonts.lato(
    //           color:AppColor.greenAnimate,
    //           fontWeight: FontWeight.bold,
    //           fontSize: 28
    //       )),
    //     ],),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //       //1st conatiner for web development
    //       Padding(
    //         padding: const EdgeInsets.symmetric(vertical:30.0,horizontal: 12),
    //         child: MouseRegion(
    //           onEnter: (value){
    //             setState(() {
    //               isHovered = true;
    //             });
    //           },
    //           onExit: (value){
    //             setState(() {
    //               isHovered = false;
    //             });
    //           },
    //           child: Container(
    //             transform: isHovered?onHoverActive:onHoverRemove,
    //             height: 270,
    //             width: 220,
    //             decoration: BoxDecoration(
    //               color: isHovered? AppColor.bgColor :Colors.grey[300]?.withOpacity(0.4),
    //               borderRadius: BorderRadius.circular(30),
    //                 border: isHovered? Border.all(color:Colors.white,width: 2):null,
    //                 gradient: LinearGradient(colors: [
    //                   AppColor.bgColor.withOpacity(0.4),
    //                   AppColor.greenAnimate.withOpacity(0.4)
    //                 ]),
    //                 boxShadow: [BoxShadow(
    //                     color: Colors.black,
    //                     spreadRadius: 4.0,
    //                     blurRadius: 4.5,
    //                     offset: Offset(3.0,4.5)
    //                 )]
    //             ),
    //             child:Column(
    //               children: [
    //                   Text("</>",style:GoogleFonts.lato(
    //             color:AppColor.greenAnimate,
    //             fontWeight: FontWeight.bold,
    //             fontSize: 26
    //             )),
    //               Text("Web development",style:GoogleFonts.lato(
    //                     color:Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                       fontSize: 20
    //                   )),SizedBox(height: 10,),
    //               Padding(
    //                 padding: const EdgeInsets.only(left:10.0,right:10.0),
    //                 child: Text("Web development is a multifaceted discipline encompassing the creation and maintenance of websites and web applications.It involves a combination of frontend and backend technologies to deliver seamless, visually appealing, and functional online experiences.",
    //                     style:GoogleFonts.lato(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.normal,
    //                 fontSize: 12
    //                 )),
    //               ),SizedBox(height: 8,),
    //               MaterialButton(
    //                 colorBrightness: Brightness.light,
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(20)
    //                 ),
    //                 color: AppColor.greenAnimate,
    //                 hoverColor: Colors.tealAccent,
    //                 elevation: 10,
    //                 onPressed: (){},
    //               child: Text("Read More",style:GoogleFonts.lato(
    //               fontWeight: FontWeight.bold
    //               )),)
    //             ],)
    //           ),
    //         ),
    //       ),
    //       //second container for android development
    //       Padding(
    //         padding: const EdgeInsets.symmetric(vertical:30.0,horizontal: 12),
    //         child: MouseRegion(
    //           onEnter: (value){
    //             setState(() {
    //               isHoveredWeb = true;
    //             });
    //           },
    //           onExit: (value){
    //             setState(() {
    //               isHoveredWeb = false;
    //             });
    //           },
    //           child: Container(
    //           transform: isHoveredWeb?onHoverActive:onHoverRemove,
    //               height: 270,
    //               width: 220,
    //               decoration: BoxDecoration(
    //                   color: isHoveredWeb? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
    //                   borderRadius: BorderRadius.circular(30),
    //                   border: isHoveredWeb? Border.all(color:Colors.white,width: 2):null,
    //                   gradient: LinearGradient(colors: [
    //                     AppColor.bgColor.withOpacity(0.4),
    //                     AppColor.greenAnimate.withOpacity(0.4)
    //                   ]),
    //                 boxShadow: [BoxShadow(
    //                   color: Colors.black,
    //                   spreadRadius: 4.0,
    //                   blurRadius: 4.5,
    //                   offset: Offset(3.0,4.5)
    //                 )]
    //               ),
    //               child:AnimatedContainer(
    //                 duration: Duration(seconds: 10),
    //                 child: Column(
    //                   children: [
    //                   Icon(Icons.android,
    //                     color: AppColor.greenAnimate,
    //
    //                   size: 29,),
    //
    //                   Text("Android development",style:GoogleFonts.lato(
    //                       color:Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 20
    //                   )),SizedBox(height: 10,),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left:10.0,right:10.0),
    //                     child: Text("When you're developing Android app using Flutter, you're leveraging the Flutter framework to build cross-platform mobile apps with a single codebase. Flutter is known for its  flexible UI, hot-reload feature, and the ability to compile to native ARM code, providing high-performance applications.",
    //                         style:GoogleFonts.lato(
    //                             color: Colors.white,
    //                             fontWeight: FontWeight.normal,
    //                             fontSize: 12
    //                         )),
    //                   ),SizedBox(height: 8,),
    //                   MaterialButton(
    //                     colorBrightness: Brightness.light,
    //                     shape: RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(20)
    //                     ),
    //                     color: AppColor.greenAnimate,
    //                     hoverColor: Colors.tealAccent,
    //                     elevation: 10,
    //                     onPressed: (){},
    //                     child: Text("Read More",style:GoogleFonts.lato(
    //                       fontWeight: FontWeight.bold
    //                     )),)
    //                 ],),
    //               )
    //           ),
    //         ),
    //       ),
    //
    //     ],)
    //
    //   ],
    // );
  }
}
