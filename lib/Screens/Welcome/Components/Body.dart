import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterui/Screens/Login/LoginScreen.dart';
import 'package:flutterui/Screens/CommanComponents/RoundedButton.dart';
import 'package:flutterui/Screens/Signup/SignupScreen.dart';
import 'package:flutterui/Screens/Welcome/Components/background.dart';

class Body extends StatelessWidget {
  const Body() : super();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Text(
                "Welcome to Flutter",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Login",
              onButtonPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              color: Colors.purple[500],
              txtColor: Colors.white,
              border: 50,
              btnWidth: size.width * 0.8,
            ),
            SizedBox(height: 20),
            RoundedButton(
              text: "Signup",
              onButtonPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              color: Colors.purple[50],
              txtColor: Colors.black,
              border: 50,
              btnWidth: size.width * 0.8,
            )
          ],
        ),
      ),
    );
  }
}
