import 'package:animate_do/animate_do.dart';
import'package:flutter/material.dart';
import 'package:flutter_web_portfolios/globals/app_color.dart';
import 'package:flutter_web_portfolios/helper-responsive-class/helperResponsive.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
  final Size size = MediaQuery.of(context).size;

  return HelperClass(
      mobile: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
            FadeInLeft(
              duration: Duration(seconds:3),
              child: Text("Contact me!",style:GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              )),
            ),
            SizedBox(height: 15,),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5,
              color:Colors.transparent,
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    hintText: "Full name",

                    prefixIcon: Icon(Icons.person,color: Colors.white,),
                    hintStyle: TextStyle(color:Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white,width: 2)
                    ),
                    fillColor: Colors.grey[900]?.withOpacity(0.5),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 15.0,
              color:Colors.transparent,
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    hintText: "Email Address",

                    prefixIcon: Icon(Icons.email,color: Colors.white,),
                    hintStyle: TextStyle(color:Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white,width: 2)
                    ),
                    fillColor: Colors.grey[900]?.withOpacity(0.5),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                ),
              ),
            ),SizedBox(height: 15,),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 15.0,
              color:Colors.transparent,
              //for mobile number
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    hintText: "Mobile Number",

                    prefixIcon: Icon(Icons.mobile_friendly,color: Colors.white,),
                    hintStyle: TextStyle(color:Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white,width: 2)
                    ),
                    fillColor: Colors.grey[900]?.withOpacity(0.5),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                ),
              ),
            ),
            SizedBox(height: 20,),
            //for email subject
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 15.0,
              color:Colors.transparent,
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    hintText: "Email Subject",

                    prefixIcon: Icon(Icons.subject,color: Colors.white,),
                    hintStyle: TextStyle(color:Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white,width: 2)
                    ),
                    fillColor: Colors.grey[900]?.withOpacity(0.5),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                ),
              ),
            ),
            SizedBox(height: 15,),
            Material(
              borderRadius: BorderRadius.circular(20),
              // elevation: 15.0,
              color:Colors.transparent,
              child: TextField(
                maxLines: 6,
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    hintText: "Enter messages...",
                    hintStyle: TextStyle(color:Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white,width: 2)
                    ),
                    fillColor: Colors.grey[900]?.withOpacity(0.5),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                ),
              ),
            ),
            SizedBox(height: 8,),
            FadeInUp(
              duration: Duration(seconds:5),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 120.0),
                child: MaterialButton(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  hoverColor: Colors.tealAccent,
                  color: AppColor.greenAnimate,
                  hoverElevation: 10,
                  onPressed: (){},
                  child: Text("Send Messages",style:GoogleFonts.abel(
                      fontWeight: FontWeight.bold
                  )),
                ),
              ),
            ),

          ],),
        ),
      ),
      desktop: Column(children: [
        FadeInLeft(
          duration: Duration(seconds:3),
          child: Text("Contact me!",style:GoogleFonts.lato(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color:Colors.white
          )),
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Full name",

                      prefixIcon: Icon(Icons.person,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Email Address",

                      prefixIcon: Icon(Icons.email,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),
          ],
        ),SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                //for mobile number
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Mobile Number",

                      prefixIcon: Icon(Icons.mobile_friendly,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            //for email subject
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Email Subject",

                      prefixIcon: Icon(Icons.subject,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),

          ],),
        SizedBox(height: 15,),
        Expanded(
          child: Material(
            borderRadius: BorderRadius.circular(20),
            // elevation: 15.0,
            color:Colors.transparent,
            child: TextField(
              maxLines: 10,
              style: TextStyle(
                  color: Colors.white
              ),
              decoration: InputDecoration(
                  hintText: "Enter messages...",
                  hintStyle: TextStyle(color:Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white,width: 2)
                  ),
                  fillColor: Colors.grey[900]?.withOpacity(0.5),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
              ),
            ),
          ),
        ),

        FadeInDown(
          duration: Duration(seconds:5),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 120.0),
            child: MaterialButton(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              hoverColor: Colors.tealAccent,
              color: AppColor.greenAnimate,
              hoverElevation: 10,
              onPressed: (){},
              child: Text("Send Messages",style:GoogleFonts.abel(
                  fontWeight: FontWeight.bold
              )),
            ),
          ),
        ),

      ],),
      tablet: Column(children: [
        FadeInLeft(
          duration: Duration(seconds:3),
          child: Text("Contact me!",style:GoogleFonts.lato(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color:Colors.white
          )),
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Full name",

                      prefixIcon: Icon(Icons.person,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Email Address",

                      prefixIcon: Icon(Icons.email,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),
          ],
        ),SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                //for mobile number
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Mobile Number",

                      prefixIcon: Icon(Icons.mobile_friendly,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            //for email subject
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 15.0,
                color:Colors.transparent,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      hintText: "Email Subject",

                      prefixIcon: Icon(Icons.subject,color: Colors.white,),
                      hintStyle: TextStyle(color:Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      fillColor: Colors.grey[900]?.withOpacity(0.5),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                  ),
                ),
              ),
            ),

          ],),
        SizedBox(height: 15,),
        Expanded(
          child: Material(
            borderRadius: BorderRadius.circular(20),
            // elevation: 15.0,
            color:Colors.transparent,
            child: TextField(
              maxLines: 10,
              style: TextStyle(
                  color: Colors.white
              ),
              decoration: InputDecoration(
                  hintText: "Enter messages...",
                  hintStyle: TextStyle(color:Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white,width: 2)
                  ),
                  fillColor: Colors.grey[900]?.withOpacity(0.5),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
              ),
            ),
          ),
        ),

        FadeInDown(
          duration: Duration(seconds:5),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 120.0),
            child: MaterialButton(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              hoverColor: Colors.tealAccent,
              color: AppColor.greenAnimate,
              hoverElevation: 10,
              onPressed: (){},
              child: Text("Send Messages",style:GoogleFonts.abel(
                  fontWeight: FontWeight.bold
              )),
            ),
          ),
        ),

      ],));

  }
}
