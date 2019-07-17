import 'package:flutter/material.dart';

class StoriExperienceButton extends StatelessWidget {
  const StoriExperienceButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xFF47d81b),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment(1.2, -1.2),
            child: Icon(
              Icons.check_circle,
              size: 39,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Icon(
                  Icons.check_circle,
                  size: 39,
                ),
                SizedBox(height: 20),
                Text(
                  'PHOTO SELFIES',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
