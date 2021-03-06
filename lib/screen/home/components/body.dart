import 'package:ebook_app/components/reading_card_list.dart';
import 'package:ebook_app/size_config.dart';
import 'package:flutter/material.dart';

import 'book_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //top images
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/main_page_bg.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            //header
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight * .1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: "What are you \nreading "),
                        TextSpan(
                            text: "today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ),
                //list book
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      ReadingListCard(
                        image: "assets/images/book-1.png",
                        title: "Crushing & Influence",
                        auth: "Gary Venchuk",
                        rating: 4.9,
                        pressDetails: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return DetailsScreen();
                          //     },
                          //   ),
                          // );
                        },
                      ),
                      ReadingListCard(
                        image: "assets/images/book-2.png",
                        title: "Top Ten Business Hacks",
                        auth: "Herman Joel",
                        rating: 4.8,
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: "Best of the "),
                            TextSpan(
                              text: "day",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      BookCard(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
