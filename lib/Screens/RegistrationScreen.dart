import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_registration/utilities/Widgets.dart';
import 'package:login_registration/utilities/constants.dart';
class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                    vertical: 220,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Create Account',
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
                        hintText: 'Enter Your Name',
                        icon: Icons.text_fields,
                        obscureText: false,
                        upperText: 'Name',
                        inputType: TextInputType.emailAddress,
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      InputBox(
                        hintText: 'Enter Your Email',
                        icon: Icons.email,
                        obscureText: false,
                        upperText: 'Email',
                        inputType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputBox(
                        hintText: 'Enter Password',
                        icon: Icons.lock,
                        obscureText: true,
                        upperText: 'Password',
                        inputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputBox(
                        hintText: 'Confirm Password',
                        icon: Icons.check,
                        obscureText: true,
                        upperText: 'Confirm Password',
                        inputType: TextInputType.text,
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
                            'REGISTER',
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
                          Text('Sign Up with' ,style : kLabelStyle),
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
