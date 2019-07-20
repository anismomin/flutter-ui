import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'widgets/stori_decision_button.dart';
import 'widgets/stori_counter.dart';

class DecisionPage extends StatefulWidget {
  DecisionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DecisionPageState createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  bool _value1 = true;
  void _value1Changed(bool value) => setState(() => _value1 = value);

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
            Container(
              alignment: Alignment(0.8, 0.0),
              height: 60,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                // decoration: new BoxDecoration(
                //   image: new DecorationImage(
                //     image: new AssetImage("assets/images/IMG_5158.PNG"),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 230.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            'WHAT DO YOU THINK?',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w700,
                                fontSize: 60.0,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            StoriDecisionButton(
                              icon: Icons.thumb_down,
                              color: Colors.red,
                              text: 'NO WAY!',
                              subText: 'TRY AGAIN...',
                              onPressed: () {},
                            ),
                            StoriDecisionButton(
                              icon: Icons.thumb_up,
                              color: Colors.lightGreen,
                              text: 'OH YEAH!',
                              subText: 'SHARE IT...',
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            _value1Changed(!_value1);
                            // FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: _value1
                                      ? Icon(
                                          Icons.check,
                                          size: 20.0,
                                          color: Colors.white,
                                        )
                                      : Icon(
                                          Icons.check_box_outline_blank,
                                          size: 20.0,
                                          color: Colors.blue,
                                        ),
                                ),
                              ),
                              Text(
                                'PUBLISH TO THE PUBLIC GALLERY',
                                style: TextStyle(
                                    fontFamily: 'Proxima',
                                    // fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[StoriCounter(text: '10')],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 40.0,
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By tapping "OH YEAH" you agree to the ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' photo release aggrement',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.normal)),
                      ],
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
