import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voice_study_web_app/components/mobile_view_builder.dart';
import 'package:voice_study_web_app/constant.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:voice_study_web_app/components/desctop_mobile_builder.dart';
import 'package:voice_study_web_app/headerView/headerbody.dart';




class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget  build (BuildContext context) {
    return DesctopMobileViewBuilder(
      mobileView: HeaderMobileView(), 
      desctopView: HeaderDesctopView());
  }
}


class HeaderDesctopView extends StatelessWidget {
   HeaderDesctopView({super.key});
 
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final imageWidth = width * 0.47;
    final isSmall = width < 950;
    return Column(
      children: [
        Container(
          height: 850,
          width: kInitWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/header_photo02.png"),
              fit: BoxFit.cover,
              
            ),
          ),
          child: const Column(
          children: [
            SizedBox(height: 100,),          
            Align(alignment:  Alignment.topRight,
            child: Expanded(
              child: HeaderBody(isMobile: false),
              )
            
             ),
              ]     
          ),
        ),
          
      ],
    );
    
  }

}


class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
      
      Container(
      padding: kScreenPadding,
      height: height * 0.9,
      width: 300,
     child: Image.asset("lib/images/header_mobile_photo.png", 
      fit: BoxFit.fitWidth,),
    ),
      SizedBox(height: 200,),
    Align(alignment: Alignment.topRight,
    child: Expanded(
      child: const HeaderBody(isMobile: true),
    )
    )
      ],
    );
    
  }
}



