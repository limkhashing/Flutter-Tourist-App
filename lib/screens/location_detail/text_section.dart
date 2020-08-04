import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _horizontalPadding = 16.0;
  static const double _verticalPadding = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(
                _horizontalPadding, _verticalPadding, _horizontalPadding, 4.0),
            child: Text(_title, style: Theme.of(context).textTheme.subtitle1),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_horizontalPadding, 10.0,
                _verticalPadding, _horizontalPadding),
            child: Text(_body),
          ),
        ],
      ),
    );
  }
}
