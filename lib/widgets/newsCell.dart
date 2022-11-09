import 'package:flutter/material.dart';

class NewsCell extends StatefulWidget {
  final String _firstText;
  final String _secondText;
  final String _imageName;

  NewsCell(this._firstText, this._secondText, this._imageName);

  @override
  State<NewsCell> createState() => _NewsCellState();
}

class _NewsCellState extends State<NewsCell> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Card(
      child: InkWell(
        child: SizedBox(
          height: mediaQuery.size.height * 0.5,
          child: Column(
            children: <Widget>[
              Image(
                  width: mediaQuery.size.width,
                  height: mediaQuery.size.height * 0.3,
                  image: AssetImage(widget._imageName),
                  fit: BoxFit.fill),
              Container(
                alignment: Alignment.topLeft,
                height: mediaQuery.size.height * 0.1,
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                child: Flexible(
                  child: Text(
                    widget._firstText,
                    style: const TextStyle(fontSize: 26),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: mediaQuery.size.height * 0.1,
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 6,
                ),
                child: Flexible(
                  child: Text(
                    widget._secondText,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
