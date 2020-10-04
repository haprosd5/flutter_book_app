import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_book_app/components/button_reader.dart';
import 'package:project_book_app/components/text_display_readbook.dart';
import 'package:project_book_app/components/titile_book.dart';
import 'package:project_book_app/helper/constants.dart';
import 'package:project_book_app/helper/data_facker.dart';
import 'package:project_book_app/helper/size_configs.dart';

class BodyHomeView extends StatefulWidget {
  @override
  _BodyHomeViewState createState() => _BodyHomeViewState();
}

class _BodyHomeViewState extends State<BodyHomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: SizeConfig.blockSizeVertical * 30,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                  color: kAccendSubColor,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Đang đọc',
                      style: GoogleFonts.saira(
                        fontSize: SizeConfig.blockSizeVertical * 2.5,
                        color: kTextPrimarySubColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 2,
                    ),
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              child: Image.network(
                                'https://sachvui.com/cover2/2020/de-co-tri-nho-tot.jpg',
                                height: SizeConfig.blockSizeVertical * 20,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            SizedBox(width: SizeConfig.blockSizeVertical * 3),
                            Container(
                              width: SizeConfig.blockSizeHorizontal * 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TitleBook(
                                    title: 'Hành trình trở về phương đông',
                                  ),
                                  TextDisPlayBookReader(
                                    progrees: '70%',
                                  ),
                                  Text(
                                    textDes,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: GoogleFonts.saira(
                                      fontSize:
                                          SizeConfig.blockSizeVertical * 2,
                                      color: kTextSecondaryMainColor,
                                    ),
                                  ),
                                  ButtonReader(
                                    onCountSelected: () => {},
                                    icon: Icons.play_arrow,
                                    cap: 'Đọc tiếp',
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: 6,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
