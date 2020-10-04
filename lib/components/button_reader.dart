import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_book_app/helper/constants.dart';
import 'package:project_book_app/helper/size_configs.dart';

class ButtonReader extends StatelessWidget {
   final VoidCallback onCountSelected;
   final String cap;
   final IconData icon;
   ButtonReader({this.onCountSelected, this.cap, this.icon});
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
       color: kAccendMainColor,
       disabledColor: kAccendMainColor,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
       elevation: 1,
       onPressed: onCountSelected,
       icon: Icon(icon, color: kPrimaryMainColor,),
       label: Text(cap, style: GoogleFonts.saira(
          fontSize: SizeConfig.blockSizeVertical * 2,
          color: kPrimaryMainColor,
          fontWeight: FontWeight.bold,
       ),),
    );
  }
}
