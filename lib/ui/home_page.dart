import 'package:flutter/material.dart';
import 'widgets/stori_icon_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, dynamic> _formData = {'email': null, 'password': null};
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordFieldController =
      TextEditingController();

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      // colorFilter:
      //     ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
      image: AssetImage('assets/images/defaultBg@2x.jpg'),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        labelText: 'E-Mail',
        filled: true,
        fillColor: Color.fromRGBO(255, 255, 255, 0.25),
        hintText: 'USER',
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
        hasFloatingPlaceholder: false,
        suffixIcon: Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty ||
            !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
          return 'Please enter a valid email';
        }
      },
      onSaved: (String value) {
        _formData['email'] = value;
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        filled: true,
        fillColor: Color.fromRGBO(255, 255, 255, 0.25),
        suffixIcon: Icon(
          Icons.lock,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      obscureText: true,
      controller: _passwordFieldController,
      validator: (String value) {
        if (value.isEmpty || value.length < 6) {
          return 'Password invalid';
        }
      },
      onSaved: (String value) {
        _formData['password'] = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 420.0 : deviceWidth * 0.95;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  width: targetWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 155.0,
                        child: Image.asset(
                          "assets/images/storicam_logo@2x.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 55.0,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20.0),
                      _buildEmailTextField(),
                      SizedBox(height: 10.0),
                      _buildPasswordTextField(),
                      SizedBox(height: 15.0),
                      StoriIconButton(
                          text: "LOAD EXPERIENCE",
                          icon: Icons.exit_to_app,
                          backgroundColor: Colors.green,
                          onPressed: () {}),
                      SizedBox(height: 5.0),
                      Row(
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          FlatButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Forgot your passwor?",
                              style: TextStyle(
                                  // fontWeight: FontWeight.w200,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            icon: Icon(
                              Icons.help_outline,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Divider(
                        color: Colors.white,
                        height: 1,
                      ),
                      SizedBox(height: 50.0),
                      SizedBox(
                        height: 45.0,
                        child: Text(
                          'New to Stori?',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      StoriIconButton(
                          text: "SIGN UP NOW",
                          icon: Icons.exit_to_app,
                          backgroundColor: Colors.blueAccent,
                          onPressed: () {}),
                      SizedBox(height: 15.0),
                      StoriIconButton(
                          text: "GETTING STARTED",
                          icon: Icons.description,
                          backgroundColor: Colors.orange,
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 20.0,
            // alignment: FractionalOffset(0.5, 0.5),
            child: Text(
              "VERSION 1.6.8",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
