import 'package:flutter/material.dart';

@immutable
class StoriExperienceButton extends StatelessWidget {
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

  final bool isSelected;

  /// width is default to be 1/1.5 of the screen
  final double width, height, fontSize;

  StoriExperienceButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.icon,
    this.textColor = Colors.white,
    this.color = Colors.green,
    this.splashColor = Colors.white30,
    this.padding = const EdgeInsets.all(3.0),
    this.mini = false,
    this.elevation = 2.0,
    this.width = 220,
    this.height = 250,
    this.fontSize = 22,
    this.isSelected = false
  })  : assert(text != null),
        assert(textColor != null),
        assert(color != null),
        assert(onPressed != null),
        assert(mini != null),
        assert(elevation != null);

  @override
  Widget build(BuildContext context) {

    final Color widgetColor = isSelected ? Color(0xFF33ff00) : Color(0xFF6c7c91);
    final Color textColor = isSelected ? Colors.white : Color(0xFF434d65);
    
    double width = MediaQuery.of(context).size.width;
    double buttonWidth = width * 0.22;
    double buttonHeight = buttonWidth * 1.15;
    double iconSize = buttonWidth * 0.60;
    double iconSpacing = buttonHeight * 0.1;
    double mainFontSize = buttonHeight * 0.08;

    return Container(
        width: buttonWidth,
        height: buttonHeight,
        margin: EdgeInsets.all(10),
        child: RawMaterialButton(
          fillColor: widgetColor,
          splashColor: splashColor,
          textStyle: TextStyle(color: textColor),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          child: Stack(
            children: <Widget>[
              isSelected ? 
              Align(
                alignment: Alignment(1.2, -1.2),
                child: Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Color(0xFF282b3a),
                          width: 5.0,
                          style: BorderStyle.solid),
                      color: color),
                  child: Icon(Icons.done, color: textColor, size: 20),
                ),
              ) : Container(),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(icon, color: textColor, size: iconSize),
                    SizedBox(height: iconSpacing),
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
              ),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}

// class StoriExperienceButton extends StatelessWidget {
//   const StoriExperienceButton({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 180,
//       margin: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Color(0xFF47d81b),
//         borderRadius: BorderRadius.all(
//           Radius.circular(10.0),
//         ),
//       ),
//       child: Stack(
//         children: <Widget>[
//           Container(
//             alignment: Alignment(1.2, -1.2),
//             child: Icon(
//               Icons.check_circle,
//               size: 39,
//             ),
//           ),
//           Center(
//             child: Column(
//               children: [
//                 SizedBox(height: 20),
//                 Icon(
//                   Icons.check_circle,
//                   size: 39,
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'PHOTO SELFIES',
//                   style: TextStyle(
//                       fontFamily: 'Proxima',
//                       fontWeight: FontWeight.w700,
//                       fontSize: 20.0,
//                       color: Colors.white),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
