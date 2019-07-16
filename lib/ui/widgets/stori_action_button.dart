import 'package:flutter/material.dart';

@immutable
class StoriActionButton extends StatelessWidget {

  /// `mini` tag is used to switch from a full-width signin button to
  final bool mini;

  /// the button's text
  final String text;

  /// backgroundColor is required but textColor is default to `Colors.white`
  /// splashColor is defalt to `Colors.white30`
  final Color textColor, backgroundColor, splashColor;

  /// onPressed should be specified as a required field to indicate the callback.
  final Function onPressed;

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

  StoriActionButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.lightBlueAccent,
    this.splashColor = Colors.white30,
    this.padding = const EdgeInsets.all(3.0),
    this.mini = false,
    this.elevation = 2.0,
    this.width = 300,
    this.height = 90,
    this.fontSize = 36,
  })  : assert(text != null),
        assert(textColor != null),
        assert(backgroundColor != null),
        assert(onPressed != null),
        assert(mini != null),
        assert(elevation != null);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        margin: EdgeInsets.all(5),
        child: RawMaterialButton(
          fillColor: backgroundColor,
          splashColor: splashColor,
          textStyle: TextStyle(color: textColor),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize,
                    color: textColor),
              ),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}
