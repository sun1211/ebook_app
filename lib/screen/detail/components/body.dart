import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/size_config.dart';
import 'package:flutter/material.dart';

import 'book_infor.dart';
import 'chapter_card.dart';
import 'suggestion_layout.dart';

class Body extends StatelessWidget {
  final Book book;
  const Body({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              //top background
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                    top: SizeConfig.screenHeight * .12,
                    left: SizeConfig.screenWidth * .1,
                    right: SizeConfig.screenWidth * .02),
                height: SizeConfig.screenHeight * .48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: BookInfo(
                  book: book,
                  size: MediaQuery.of(context).size,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: SizeConfig.screenHeight * .48 - 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ChapterCard(
                      name: "Money",
                      chapterNumber: 1,
                      tag: "Life is about change",
                      press: () {},
                    ),
                    ChapterCard(
                      name: "Power",
                      chapterNumber: 2,
                      tag: "Everything loves power",
                      press: () {},
                    ),
                    ChapterCard(
                      name: "Influence",
                      chapterNumber: 3,
                      tag: "Influence easily like never before",
                      press: () {},
                    ),
                    ChapterCard(
                      name: "Win",
                      chapterNumber: 4,
                      tag: "Winning is what matters",
                      press: () {},
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline5,
                    children: [
                      TextSpan(
                        text: "You might also ",
                      ),
                      TextSpan(
                        text: "like….",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SuggestionLayout(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
