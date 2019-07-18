import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/stori_experience_button.dart';
import 'widgets/stori_menu_button.dart';
import 'package:global_configuration/global_configuration.dart';

class ExperiencePage extends StatefulWidget {
  ExperiencePage({Key key, this.title}) : super(key: key);
  
  final String title;
  
  @override
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    print(GlobalConfiguration().getString("key1"));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              stops: [0.1, 0.9],
              colors: [Color(0xFF414d62), Color(0xFF333a4f)]),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Account: anis_momin@hotmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
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
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60),
                  Text(
                    'CHOOSE    EXPERIENCE',
                    style: TextStyle(
                        fontFamily: 'Bebas',
                        // fontWeight: FontWeight.w700,
                        fontSize: 65.0,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tap on more than one experience to enable user choice',
                    style: TextStyle(
                        // fontFamily: 'Bebas',
                        // fontWeight: FontWeight.w700,
                        fontSize: 26.0,
                        color: Colors.white),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      StoriExperienceButton(onPressed : () {}, icon : Icons.party_mode, text: 'PHOTO SELFIE', color: Color(0xFF33ff00), isSelected: true),
                      StoriExperienceButton(onPressed : () {}, icon : Icons.videocam, text: 'VIDEO SHOUTOUT', color: Color(0xFF33ff00)),
                      StoriExperienceButton(onPressed : () {}, icon : Icons.all_inclusive, text: 'BOOMARANG', color: Color(0xFF33ff00)),
                    ],
                  ),
                  SizedBox(height: 80),
                  Text(
                    'MENU',
                    style: TextStyle(
                        fontFamily: 'Bebas',
                        // fontWeight: FontWeight.w700,
                        fontSize: 60.0,
                        color: Colors.white),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      StoriMenuButton(
                        text: "DASHBAORD",
                        icon: Icons.dashboard,
                        color: Colors.purple,
                        onPressed: () {},
                      ),
                      StoriMenuButton(
                        text: "REFRESH",
                        icon: Icons.autorenew,
                        color: Colors.green,
                        onPressed: () {},
                      ),
                      StoriMenuButton(
                        text: "LOGOUT",
                        icon: Icons.power_settings_new,
                        color: Colors.red,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      StoriMenuButton(
                        text: "PENDING\nTRANSFERS",
                        icon: Icons.exit_to_app,
                        color: Colors.orange,
                        onPressed: () {},
                      ),
                      StoriMenuButton(
                        text: "BANDWIDTH\nTEST",
                        icon: Icons.signal_cellular_connected_no_internet_4_bar,
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                      StoriMenuButton(
                        text: 'SUPPORT\n/ FAQ',
                        icon: Icons.comment,
                        color: Colors.purpleAccent,
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment(0.8, 0.0),
              height: 60,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'VERSION 1.8.0',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'BLUETOOTH ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
