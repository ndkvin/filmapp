import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Bookmark Page',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}