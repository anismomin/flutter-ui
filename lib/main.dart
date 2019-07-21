import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'ui/home_page.dart';
import 'ui/action_page.dart';
import 'ui/preview_page.dart';
import 'ui/experience_page.dart';
import 'ui/unlock_page.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:storicam/config/app_settings.config.dart';

void main() {
  GlobalConfiguration().loadFromMap(appSettings);
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UnlockPage(),
      // home: HomePage(),
      // home: ExperiencePage(),
      // home: ActionPage(),
      // home: PreviewPage(),
      // routes: {
      //     '/': (BuildContext context) =>  HomePage(),
      //     '/experience': (BuildContext context) =>  ExperiencePage(),
      //     '/action': (BuildContext context) =>  ActionPage(),
      //     '/preview': (BuildContext context) =>  PreviewPage(),
      //     '/unlock': (BuildContext context) =>  UnlockPage(),
      // },
    );
  }
}
