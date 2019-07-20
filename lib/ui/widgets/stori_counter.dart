import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@immutable
class StoriCounter extends StatelessWidget {
  /// `mini` tag is used to switch from a full-width signin button to
  final bool mini;

  /// the button's text
  final String text;

  /// backgroundColor is required but textColor is default to `Colors.white`
  /// splashColor is defalt to `Colors.white30`
  final Color textColor, backgroundColor;

  /// padding is default to `EdgeInsets.all(3.0)`
  final EdgeInsets padding;

  /// shape is to specify the custom shape of the widget.
  /// However the flutter widgets contains restriction or bug
  /// on material button, hence, comment out.
  // final ShapeBorder shape;

  /// elevation has defalt value of 2.0
  final double elevation;

  /// width is default to be 1/1.5 of the screen
  final double width, height, fontSize;

  StoriCounter({
    Key key,
    @required this.text,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.lightBlueAccent,
    this.padding = const EdgeInsets.all(3.0),
    this.mini = false,
    this.elevation = 2.0,
    this.width = 56,
    this.height = 56,
    this.fontSize = 24,
  })  : assert(text != null),
        assert(textColor != null),
        assert(backgroundColor != null),
        assert(mini != null),
        assert(elevation != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white, //                   <--- border color
          width: 4.0,
        ),
      ),
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: textColor),
        ),
      ),
    );
  }
}
