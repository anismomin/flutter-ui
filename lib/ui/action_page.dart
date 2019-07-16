import 'package:flutter/material.dart';
import 'widgets/stori_action_button.dart';

class ActionPage extends StatefulWidget {
  ActionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ActionPageState createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      // colorFilter:
      //     ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
      image: AssetImage('assets/images/defaultBg@2x.jpg'),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final double deviceWidth = MediaQuery.of(context).size.width;
    // final double targetWidth = deviceWidth > 550.0 ? 420.0 : deviceWidth * 0.95;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment(0.8, 0.0),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    size: 60,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 120.0),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'TAP TO START',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 55.0,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        StoriActionButton(
                          text: 'PHOTO',
                          onPressed: () {},
                        ),
                        StoriActionButton(
                          text: 'BOOMERANG',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        StoriActionButton(
                          text: 'SHOUTOUT',
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              // height: 90.0,
              child: Column(
                children: [
                  Text(
                    "by using this application you agree to our Privacy Policy and Terms of use",
                    style: TextStyle(
                        // fontWeight: FontWeight.w200,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    height: 38.0,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    child: Image.asset(
                      "assets/images/powerby-halocam@2x.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
