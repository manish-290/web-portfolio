import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_portfolios/views/main-dashboard.dart';

import 'home.dart';

void main(){
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"My portfolio",
      debugShowCheckedModeBanner: false,
      home:MainDashboard()
    );
  }
}
