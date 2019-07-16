import 'package:flutter/material.dart';

@immutable
class StoriIconButton extends StatelessWidget {
  /// This is a builder class for signin button
  ///
  /// Icon can be used to define the signin method
  /// User can use Flutter built-in Icons or font-awesome flutter's Icon
  final IconData icon;

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
  

  StoriIconButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.icon,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.lightBlueAccent,
    this.splashColor = Colors.white30,
    this.padding = const EdgeInsets.all(3.0),
    this.mini = false,
    this.elevation = 2.0,
    this.width = null,
    this.height = 70,
    this.fontSize = 26,
  })  : assert(text != null),
        assert(icon != null),
        assert(textColor != null),
        assert(backgroundColor != null),
        assert(onPressed != null),
        assert(mini != null),
        assert(elevation != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: height,
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
              SizedBox(width:10),
              Icon(icon, color: textColor)
            ],
          ),
          onPressed: onPressed,
        ));
  }
}