import 'package:flutter/material.dart';

class GuideCell extends StatefulWidget {
  final String _iconText;
  final String _imageText;
  final String _nameText;
  final String _descText;
  final String _addressText;

  const GuideCell(this._iconText, this._imageText, this._nameText,
      this._descText, this._addressText);

  @override
  State<GuideCell> createState() => _GuideCellState();
}

class _GuideCellState extends State<GuideCell> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final imageSize = mediaQuery.size.height * 0.12;

    void _favored() {
      setState(() {
        selected = !selected;
      });
    }

    return Card(
      color: Colors.grey[300],
      child: InkWell(
        child: SizedBox(
          height: mediaQuery.size.height * 0.4,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: mediaQuery.size.height * 0.2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: mediaQuery.size.width * 0.05,
                    ),
                    Image(
                        width: imageSize,
                        height: imageSize,
                        image: AssetImage(widget._iconText),
                        fit: BoxFit.fill),
                    SizedBox(
                      width: mediaQuery.size.width * 0.05,
                    ),
                    Image(
                        width: imageSize,
                        height: imageSize,
                        image: AssetImage(widget._imageText),
                        fit: BoxFit.fill),
                    SizedBox(
                      width: mediaQuery.size.width * 0.23,
                    ),
                    IconButton(
                      onPressed: _favored,
                      icon: const Icon(Icons.star),
                      iconSize: 50.0,
                      color: selected ? Colors.blue : Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: mediaQuery.size.height * 0.05,
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                child: Flexible(
                  child: Text(
                    widget._nameText,
                    style: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: mediaQuery.size.height * 0.04,
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 6,
                ),
                child: Flexible(
                  child: Text(
                    widget._descText,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: mediaQuery.size.height * 0.08,
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Flexible(
                  child: Text(
                    widget._addressText,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
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
