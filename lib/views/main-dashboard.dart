import 'package:flutter/material.dart';
import 'package:flutter_web_portfolios/home.dart';
import 'package:flutter_web_portfolios/views/About_me.dart';
import 'package:flutter_web_portfolios/views/contact.dart';
import 'package:flutter_web_portfolios/views/myPortfolio.dart';
import 'package:flutter_web_portfolios/views/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../globals/app_color.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final ItemScrollController _itemScrollController = ItemScrollController();

  final onMenuHover = Matrix4.identity()..scale(1.0);
  final  menuItems = <String>[
    "Home",
    "AboutMe",
    "Services",
    "Portfolio",
    "Contact"
  ];
  var menuIndex =0;
  //bring the screen at the single page
  final ScreenList = <Widget>[
    Home(),
    AboutMe(),
    Services(),
    MyPortfolio(),
    Contact()
  ];

  AnimatedContainer buildNavbarAnimatedContainer(int index, bool hover){
    return AnimatedContainer(
      duration: Duration(milliseconds: 50),
      alignment: Alignment.center,
      width: hover? 80 : 75,
      transform: hover? onMenuHover:null,
      child: Text(
          menuItems[index],
          style:GoogleFonts.lato(
              fontSize: 16,
              color:hover? AppColor.greenAnimate:Colors.white)
      ),
    );
  }
  void scrollTo({required int index}){
    _itemScrollController.scrollTo(index: index,
      duration: const Duration(seconds:2),
      curve: Curves.fastLinearToSlowEaseIn
    ).whenComplete(() {
      setState(() {
        menuIndex=index;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
          toolbarHeight: 90,
          elevation: 0,
          // bottomOpacity: 0,
          titleSpacing: 50,
          backgroundColor: AppColor.bgColor,
          title: LayoutBuilder(
            builder: (context, constraints) {
              if(constraints.maxWidth < 768){
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Portfolio",style:GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color:Colors.white,)),
                    Spacer(),
                    PopupMenuButton(
                        
                        icon: Icon(Icons.menu_sharp,color: Colors.white,),
                    itemBuilder: (BuildContext context)=> menuItems
                        .asMap().
                    entries
                        .map((e) => PopupMenuItem(
                      textStyle: GoogleFonts.aboreto(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      onTap: (){
                        scrollTo(index: e.key);
                      },
                      child: Text(e.value),
                        )).toList(),),
                    
                    //sized box with row

                  ],);
              }else{
               return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Portfolio",style:GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color:Colors.white,)),
                    Spacer(),

                    SizedBox(height: 30,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: menuItems.length,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              scrollTo(index: index);
                            },
                            borderRadius: BorderRadius.circular(100),
                            onHover: (value){
                              setState(() {
                                if(value){
                                  menuIndex = index;
                                }else{
                                  menuIndex=-1;
                                }
                              });
                            },
                            child: buildNavbarAnimatedContainer(index,
                                menuIndex==index?true:false),
                          );
                        },
                        separatorBuilder: (context,child)=>SizedBox(width:10),
                      ),
                    ),
                  ],);
              }

            }
          )
      ),
      body:ScrollablePositionedList.builder(
        itemCount: ScreenList.length,
          itemScrollController: _itemScrollController,
          itemBuilder: (context,index){
            return SizedBox(
              height:size.height,
                child: ScreenList[index]);
          })
    );
  }
}
