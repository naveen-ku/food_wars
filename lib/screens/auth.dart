import "package:flutter/material.dart";
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_wars/screens/landing_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  Map<String, dynamic> _formData = {
    'nameValue': null,
    'emailValue': null,
    'passValue': null,
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
      image: AssetImage('assets/images/food_bg.jpg'),
    );
  }

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name',
      ),
      keyboardType: TextInputType.name,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }
        return null;
      },
      onSaved: (String value) {
        _formData['nameValue'] = value;
      },
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is required';
        }
        return null;
      },
      onSaved: (String value) {
        _formData['emailValue'] = value;
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
      //controller: _passwordTextController,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is required';
        }
        return null;
      },
      onSaved: (String value) {
        _formData['passValue'] = value;
      },
    );
  }

  Widget _switchSignupModeButton() {
    return FlatButton(
      child: Text(
        'Switch to Signup',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );
  }

  Widget _signinButton() {
    return Center(
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Text(
          "Sign in",
          style:
              TextStyle(color: Theme.of(context).accentColor, fontSize: 20.0),
        ),
        onPressed: () => _submitForm(),
      ),
    );
  }

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return LandingScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                width: targetWidth,
                child: Column(
                  children: <Widget>[
                    _buildNameTextField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildEmailTextField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildPasswordTextField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _switchSignupModeButton(),
                    _signinButton(),
                    SignInButton(
                      Buttons.FacebookNew,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SignInButton(
                      Buttons.Google,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
