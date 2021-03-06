import 'package:ebook_app/components/book_rating.dart';
import 'package:ebook_app/consttants.dart';
import 'package:flutter/material.dart';

class BookInfor extends StatelessWidget {
  const BookInfor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            "New York Time Best For 11th March 2020",
            style: TextStyle(
              fontSize: 9,
              color: kLightBlackColor,
            ),
          ),
        ),
        Text(
          "How To Win \nFriends &  Influence",
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          "Gary Venchuk",
          style: TextStyle(color: kLightBlackColor),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: BookRating(score: 4.9),
              ),
              Expanded(
                child: Text(
                  "When the earth was flat and everyone wanted to win the game of the best and people….",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10,
                    color: kLightBlackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
