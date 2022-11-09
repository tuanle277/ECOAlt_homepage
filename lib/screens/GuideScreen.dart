import 'package:flutter/material.dart';

import '/widgets/guideCell.dart';

class GuideScreen extends StatelessWidget {
  final List<GuideCell> _listOfGuide;

  const GuideScreen(this._listOfGuide);

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
          child: const Text('Business guide', style: TextStyle(fontSize: 38)),
        ),
        Container(
          color: Colors.grey[300],
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
                  return _listOfGuide[index];
                },
                itemCount: _listOfGuide.length),
          ),
        ),
      ],
    );
  }
}
