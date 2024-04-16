import 'package:circular_image/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolios/globals/app_color.dart';
import 'package:flutter_web_portfolios/helper-responsive-class/helperResponsive.dart';
import 'package:google_fonts/google_fonts.dart';
class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  bool isHovered = false;
  bool isHoveredWeb = false;

  final onHoveredActive = Matrix4.identity()..translate(-5,-10,0);
  final onHoveredRemove = Matrix4.identity()..translate(0,0,0);
  @override
  Widget build(BuildContext context) {
final Size size = MediaQuery.of(context).size;
    return HelperClass(
        mobile: SingleChildScrollView(
          child: Column(

            children: [
            //for heading
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("MY ",style:GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color:Colors.white,
                    letterSpacing: 6.0
                )),
                Text("PROJECTS",style:GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: AppColor.greenAnimate,
                    letterSpacing: 6.0
                )),
              ],),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical:20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        transform: isHovered? onHoveredActive:onHoveredRemove,
                        height:280,
                        width:410,
                        decoration: BoxDecoration(
                            color:isHovered? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                            border: isHovered?Border.all(color: Colors.white,width:2):null,
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
                            SizedBox(height: 10,),
                            CircularImage(source: 'images/welcome.png',
                              radius:50,
                              borderColor: Colors.blue,
                              borderWidth: 2,),
                            SizedBox(height: 5,),
                            Text("Shop-Sphere",style:GoogleFonts.lato(
                                color:AppColor.greenAnimate,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("\"Shopsphere\" built using Flutter and Dart, have been implemented to enhance the user experience. The app incorporates Stripe payment integration to facilitate secure and seamless transactions. For the customer support aspect, a chatbot feature has been integrated, enabling users to interact with an automated assistant.",
                                  style:GoogleFonts.lato(
                                      fontSize: 12,
                                      color:Colors.white
                                  )),
                            ),
                            SizedBox(height: 8,),
                            MaterialButton(
                              color: AppColor.greenAnimate,
                              hoverColor: Colors.tealAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.arrow_forward),
                              onPressed: (){},
                            )
                          ],
                        )),
                  ),
                  ///// //second container for cinequest
                  SizedBox(height:20),
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
                        transform: isHoveredWeb? onHoveredActive:onHoveredRemove,
                        height:288,
                        width:410,
                        decoration: BoxDecoration(
                            color:isHoveredWeb? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
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
                            SizedBox(height: 10,),
                            CircularImage(source: 'images/movie1.png',
                              radius:50,
                              borderColor: Colors.blue,
                              borderWidth: 2,),
                            SizedBox(height: 5,),
                            Text("Cinequest",style:GoogleFonts.lato(
                                color:AppColor.greenAnimate,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("\"Cinequest\" is a mobile movie review application designed to enhance the film-watching experience for users. This app allows movie enthusiasts to discover, rate, and review films from various genres. Users can access detailed information about movies, including cast, crew, and release dates. This application is basically designed for TMDB API illustration. ",
                                  style:GoogleFonts.lato(
                                      fontSize: 12,
                                      color:Colors.white
                                  )),
                            ),
                            SizedBox(height: 10,),
                            MaterialButton(
                              color: AppColor.greenAnimate,
                              hoverColor: Colors.tealAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.arrow_forward),
                              onPressed: (){},
                            )
                          ],
                        )),
                  ),

                ],
              ),
            )
          ],),
        ),
        desktop: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //for heading
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("MY ",style:GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color:Colors.white,
                  letterSpacing: 6.0
              )),
              Text("PROJECTS",style:GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 6.0,
                  color: AppColor.greenAnimate
              )),
            ],),
          Container(
            height:400,
            decoration: BoxDecoration(
              color:Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        transform: isHovered? onHoveredActive:onHoveredRemove,
                        height:380,
                        width:250,
                        decoration: BoxDecoration(
                            color:isHovered? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                            border: isHovered?Border.all(color: Colors.white,width:2):null,
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
                            SizedBox(height: 10,),
                            CircularImage(source: 'images/welcome.png',
                              radius:50,
                              borderColor: Colors.blue,
                              borderWidth: 2,),
                            SizedBox(height: 5,),
                            Text("Shop-Sphere",style:GoogleFonts.lato(
                                color:AppColor.greenAnimate,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("\"Shopsphere\" built using Flutter and Dart, have been implemented to enhance the user experience. The app incorporates Stripe payment integration to facilitate secure and seamless transactions. For the customer support aspect, a chatbot feature has been integrated, enabling users to interact with an automated assistant.",
                                  style:GoogleFonts.lato(
                                      fontSize: 12,
                                      color:Colors.white
                                  )),
                            ),
                            SizedBox(height: 12,),
                            MaterialButton(
                              color: AppColor.greenAnimate,
                              hoverColor: Colors.tealAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.arrow_forward),
                              onPressed: (){},
                            )
                          ],
                        )),
                  ),
                  ///// //second container for cinequest
                  SizedBox(width:40),
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
                        transform: isHoveredWeb? onHoveredActive:onHoveredRemove,
                        height:450,
                        width:250,
                        decoration: BoxDecoration(
                            color:isHoveredWeb? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
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
                            SizedBox(height: 10,),
                            CircularImage(source: 'images/movie1.png',
                              radius:50,
                              borderColor: Colors.blue,
                              borderWidth: 2,),
                            SizedBox(height: 5,),
                            Text("Cinequest",style:GoogleFonts.lato(
                                color:AppColor.greenAnimate,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("\"Cinequest\" is a mobile movie review application designed to enhance the film-watching experience for users. This app allows movie enthusiasts to discover, rate, and review films from various genres. Users can access detailed information about movies, including cast, crew, and release dates. This application is basically designed for TMDB API illustration. ",
                                  style:GoogleFonts.lato(
                                      fontSize: 12,
                                      color:Colors.white
                                  )),
                            ),
                            SizedBox(height: 10,),
                            MaterialButton(
                              color: AppColor.greenAnimate,
                              hoverColor: Colors.tealAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.arrow_forward),
                              onPressed: (){},
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),)
        ],),
        tablet: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //for heading
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("MY ",style:GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color:Colors.white,
                  letterSpacing: 6.0
              )),
              Text("PROJECTS",style:GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: AppColor.greenAnimate,
                  letterSpacing: 6.0
              )),
            ],),
          Container(
            height:400,
            decoration: BoxDecoration(
              color:Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        transform: isHovered? onHoveredActive:onHoveredRemove,
                        height:380,
                        width:250,
                        decoration: BoxDecoration(
                            color:isHovered? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                            border: isHovered?Border.all(color: Colors.white,width:2):null,
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
                            SizedBox(height: 10,),
                            CircularImage(source: 'images/welcome.png',
                              radius:50,
                              borderColor: Colors.blue,
                              borderWidth: 2,),
                            SizedBox(height: 5,),
                            Text("Shop-Sphere",style:GoogleFonts.lato(
                                color:AppColor.greenAnimate,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("\"Shopsphere\" built using Flutter and Dart, have been implemented to enhance the user experience. The app incorporates Stripe payment integration to facilitate secure and seamless transactions. For the customer support aspect, a chatbot feature has been integrated, enabling users to interact with an automated assistant.",
                                  style:GoogleFonts.lato(
                                      fontSize: 12,
                                      color:Colors.white
                                  )),
                            ),
                            SizedBox(height: 12,),
                            MaterialButton(
                              color: AppColor.greenAnimate,
                              hoverColor: Colors.tealAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.arrow_forward),
                              onPressed: (){},
                            )
                          ],
                        )),
                  ),
                  ///// //second container for cinequest
                  SizedBox(width:40),
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
                        transform: isHoveredWeb? onHoveredActive:onHoveredRemove,
                        height:360,
                        width:250,
                        decoration: BoxDecoration(
                            color:isHoveredWeb? AppColor.bgColor:Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
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
                            SizedBox(height: 10,),
                            CircularImage(source: 'images/movie1.png',
                              radius:50,
                              borderColor: Colors.blue,
                              borderWidth: 2,),
                            SizedBox(height: 5,),
                            Text("Cinequest",style:GoogleFonts.lato(
                                color:AppColor.greenAnimate,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text("\"Cinequest\" is a mobile movie review application designed to enhance the film-watching experience for users. This app allows movie enthusiasts to discover, rate, and review films from various genres. Users can access detailed information about movies, including cast, crew, and release dates. This application is basically designed for TMDB API illustration. ",
                                  style:GoogleFonts.lato(
                                      fontSize: 12,
                                      color:Colors.white
                                  )),
                            ),
                            SizedBox(height: 10,),
                            MaterialButton(
                              color: AppColor.greenAnimate,
                              hoverColor: Colors.tealAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.arrow_forward),
                              onPressed: (){},
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),)
        ],));

  }
}
