import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterui/Screens/CommanComponents/RoundedButton.dart';
import 'package:flutterui/Screens/CommanComponents/RoundedPasswordField.dart';
import 'package:flutterui/Screens/CommanComponents/RoundedTextFieldContainer.dart';
import 'package:flutterui/Screens/CommanComponents/TextContainer.dart';
import 'package:flutterui/Screens/Login/Components/background.dart';
import 'package:flutterui/Screens/Signup/SignupScreen.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool secureTxt = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Background(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.3,
            ),
            SizedBox(height: 20),
            RoundedTextFieldContainer(
              hintText: "Enter your Email.",
              onChnaged: (value) {},
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            RoundedPasswordFieldContainer(
                hintText: "Enter your password.",
                onChnaged: (value) {},
                icon: Icons.lock,
                suffixIcon: Icons.visibility,
                secureText: secureTxt,
                onPressVisibility: () {
                  setState(() {
                    secureTxt= !secureTxt;
                  });
                }),
            SizedBox(height: 40),
            RoundedButton(
              text: "Login",
              onButtonPress: () {
                print("login");
              },
              color: Colors.purple[500],
              txtColor: Colors.white,
              border: 50,
              btnWidth: size.width * 0.8,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextContainer(
                  text: "Don't have an account ?",
                  txtColor: Colors.purple,
                  // onPress: () {print("Forgot password");}
                ),
                TextContainer(
                    text: " Sign up",
                    txtColor: Colors.purple,
                    fontWeight: FontWeight.bold,
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }));
                    })
              ],
            )
          ],
        ),
      )),
    );
  }
}
