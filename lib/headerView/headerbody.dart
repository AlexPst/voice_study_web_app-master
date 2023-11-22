import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voice_study_web_app/constant.dart';


class HeaderBody extends StatefulWidget {
  const HeaderBody({super.key, required this.isMobile});

  final bool isMobile;

  @override
  State<HeaderBody> createState() => _HeaderBodyState();
}

class _HeaderBodyState extends State<HeaderBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: kScreenPadding,
        child: AutoSizeText('Анастасия Новицкая',
        style: GoogleFonts.inter(textStyle: Theme.of(context).textTheme.displayLarge),),
        ),

        SizedBox(height: widget.isMobile ? 20:40,),
        Padding(padding: EdgeInsets.symmetric(
          vertical: widget.isMobile ? 10 : 17,
          horizontal: widget.isMobile ? 10 : 20
        ),)
      ],
    );
  }
}