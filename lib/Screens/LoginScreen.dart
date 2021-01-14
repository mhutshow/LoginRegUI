import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_registration/utilities/Widgets.dart';
import 'package:login_registration/utilities/constants.dart';

import 'RegistrationScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              //adding background image
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ('assets/images/background.jpg'),
                    ),
                    fit: BoxFit.cover,
                    //this will add a darker effect
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.darken),
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 320,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.yellowAccent,
                          fontFamily: "OpenSans",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InputBox(
                        hintText: 'Enter Your Email',
                        icon: Icons.email,
                        obscureText: false,
                        upperText: 'Email',
                        inputType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InputBox(
                        hintText: 'Enter Password',
                        icon: Icons.lock,
                        obscureText: true,
                        upperText: 'Password',
                        inputType: TextInputType.text,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          onPressed: () => print('Forgot password is pressed'),
                          padding: EdgeInsets.only(right: 0),
                          child: Text(
                            'Forgot Password?',
                            style: kLabelStyle,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        child: Row(
                          children: [
                            Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: Colors.white),
                              child: Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.green,
                                activeColor: Colors.yellowAccent,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'Remember me',
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5,
                          onPressed: () => print('Login Button Is Pressed'),
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.yellowAccent.withOpacity(0.3),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans'),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text('- OR -' , style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(height: 30,),
                          Text('Sign in with' ,style : kLabelStyle),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SignInWithButton(
                            printText: 'Login With Google',
                            imagePath: 'assets/images/google.jpg',
                          ),
                          SignInWithButton(
                            printText: 'Login With Facebook',
                            imagePath: 'assets/images/facebook.jpg',
                          ),
                          SignInWithButton(
                            printText: 'Login With Github',
                            imagePath: 'assets/images/GitHub-Mark.png',
                          ),
                        ],
                      ),
                      SizedBox( height: 30,),
                      Center(
                        child: GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return RegistrationScreen();
                            },
                          ),),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don\'t have an Account? ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    color: Colors.yellowAccent,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
