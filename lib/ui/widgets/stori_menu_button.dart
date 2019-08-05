import 'package:flutter/material.dart';

@immutable
class StoriMenuButton extends StatelessWidget {
  /// `mini` tag is used to switch from a full-width signin button to
  final bool mini;

  final IconData icon;

  /// the button's text
  final String text;

  /// color is required but textColor is default to `Colors.white`
  /// splashColor is defalt to `Colors.white30`
  final Color textColor, color, splashColor;

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

  StoriMenuButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.icon,
    this.textColor = Colors.white,
    this.color = Colors.lightBlueAccent,
    this.splashColor = Colors.white30,
    this.padding = const EdgeInsets.all(3.0),
    this.mini = false,
    this.elevation = 2.0,
    this.width = 250,
    this.height = 220,
    this.fontSize = 30,
  })  : assert(text != null),
        assert(textColor != null),
        assert(color != null),
        assert(onPressed != null),
        assert(mini != null),
        assert(elevation != null);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double buttonWidth = width * 0.20;
    double buttonHeight = buttonWidth * 1;
    double iconSize = buttonWidth * 0.40;
    double iconSpacing = buttonHeight * 0.1;
    double mainFontSize = buttonHeight * 0.1;

    return Container(
        width: buttonWidth,
        height: buttonHeight,
        margin: EdgeInsets.all(10),
        child: RawMaterialButton(
          fillColor: color,
          splashColor: splashColor,
          textStyle: TextStyle(color: textColor),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: textColor, size: iconSize),
              SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Proxima',
                  fontWeight: FontWeight.w700,
                  fontSize: mainFontSize,
                  color: textColor,
                ),
              ),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}
