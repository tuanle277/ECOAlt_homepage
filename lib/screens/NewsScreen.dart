import 'package:flutter/material.dart';

import '/widgets/newsCell.dart';

class NewsScreen extends StatelessWidget {
  final List<NewsCell> _listOfNews;

  const NewsScreen(this._listOfNews);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: mediaQuery.size.height * 0.1,
          width: mediaQuery.size.width,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15),
          child: const Text('News', style: TextStyle(fontSize: 38)),
        ),
        SizedBox(
          height: mediaQuery.size.height * 0.8,
          width: mediaQuery.size.width,
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemBuilder: (
                  context,
                  index,
                ) {
                  return _listOfNews[index];
                },
                itemCount: _listOfNews.length),
          ),
        ),
      ],
    );
  }
}
