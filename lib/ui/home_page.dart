import 'package:flutter/material.dart';

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
          Icons.email,
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
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: targetWidth,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Image.asset(
                      "assets/images/storicam_logo@2x.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20.0),
                  _buildEmailTextField(),
                  SizedBox(height: 10.0),
                  _buildPasswordTextField(),
                  SizedBox(height: 15.0),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    // height: double.infinity,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      elevation: 4.0,
                      // shape: new RoundedRectangleBorder(
                      //   borderRadius: new BorderRadius.circular(5.0),
                      // ),
                      color: Colors.green,
                      label: Text(
                        "LOAD EXPERIENCE",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: Colors.white),
                      ),
                      icon: Icon(Icons.error, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  FlatButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Forgot your passwor?",
                      style: TextStyle(
                          // fontWeight: FontWeight.w200,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    icon: Icon(Icons.error, color: Colors.white),
                  ),
                  SizedBox(height: 25.0),
                  Divider(
                    color: Colors.white,
                    height: 36,
                  ),
                  SizedBox(
                    height: 65.0,
                    child: Text(
                      'New to Stori?',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    // height: double.infinity,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      elevation: 4.0,
                      color: Colors.blueAccent,
                      label: Text(
                        "SIGN UP NOW",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: Colors.white),
                      ),
                      icon: Icon(Icons.error, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    // height: double.infinity,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      elevation: 4.0,
                      color: Colors.orangeAccent,
                      label: Text(
                        "GETTING STARTED",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: Colors.white),
                      ),
                      icon: Icon(Icons.error, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 55.0),
                  Text(
                    "VERSION 1.6.8",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
