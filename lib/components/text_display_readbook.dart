import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_book_app/helper/constants.dart';
import 'package:project_book_app/helper/size_configs.dart';

class TextDisPlayBookReader extends StatelessWidget {
   String progrees;
   TextDisPlayBookReader({this.progrees});
  @override
  Widget build(BuildContext context) {
    return Row(
       children: <Widget>[
          Text(
             'Đã đọc ',
             style: GoogleFonts.saira(
                fontSize:
                SizeConfig.blockSizeVertical * 1.5,
                color: kTextSecondaryMainColor,
                fontStyle: FontStyle.italic,
             ),
          ),
          Text(
             progrees,
             style: GoogleFonts.saira(
                fontSize:
                SizeConfig.blockSizeVertical * 1.5,
                color: kAccendMainColor,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
             ),
          ),
       ],
    );
  }
}
