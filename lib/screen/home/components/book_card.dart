import 'package:ebook_app/components/two_side_rounded_button.dart';
import 'package:ebook_app/size_config.dart';
import 'package:flutter/material.dart';

import 'book_infor.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            //background
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: SizeConfig.screenWidth * .35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              //detail
              child: BookInfor(),
            ),
          ),
          //top images demo
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: SizeConfig.screenWidth * .37,
            ),
          ),
          //Read button
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: SizeConfig.screenHeight * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
