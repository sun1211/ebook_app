import 'package:ebook_app/size_config.dart';
import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/screen/detail/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Book book;
  const DetailScreen({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(
        book: book,
      ),
    );
  }
}
