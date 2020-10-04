import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_book_app/helper/constants.dart';
import 'package:project_book_app/helper/size_configs.dart';


class TitleBook extends StatelessWidget {
   final String title;

   TitleBook({this.title});

   @override
   Widget build(BuildContext context) {
      return Text(
         title,
         overflow: TextOverflow.ellipsis,
         maxLines: 1,
         style: GoogleFonts.saira(
            fontSize: SizeConfig.blockSizeVertical * 3,
            color: kTextPrimarySubColor,
            fontWeight: FontWeight.bold,
         ),
      );
   }
}
