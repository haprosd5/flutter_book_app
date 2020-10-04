import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_book_app/helper/constants.dart';
import 'package:project_book_app/helper/size_configs.dart';
import 'package:project_book_app/widgets/BodyHomeView.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              'TỦ SÁCH ',
              style:
                  GoogleFonts.saira(fontSize: 24, color: kTextPrimaryMainColor, fontWeight: FontWeight.bold, ),
            ),
            Text(
              'HAY',
              style:
              GoogleFonts.saira(fontSize: 24, color: kAccendMainColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: kTextPrimaryMainColor,), onPressed: null)
        ],
      ),
      body: BodyHomeView(),
    );
  }
}




