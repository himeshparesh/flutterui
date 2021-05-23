import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterui/Screens/CommanComponents/Divider.dart';
import 'package:flutterui/Screens/CommanComponents/RoundedButton.dart';
import 'package:flutterui/Screens/CommanComponents/RoundedPasswordField.dart';
import 'package:flutterui/Screens/CommanComponents/RoundedTextFieldContainer.dart';
import 'package:flutterui/Screens/CommanComponents/TextContainer.dart';
import 'package:flutterui/Screens/Login/LoginScreen.dart';
import 'package:flutterui/Screens/Signup/Components/background.dart';
import 'package:share/share.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Background(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextContainer(
                text: "SIGNUP",
                fontSize: 15,
                txtColor: Colors.purple[800],
                fontWeight: FontWeight.bold,
              ),
              SvgPicture.asset(
                'assets/icons/signup.svg',
                height: size.height * .25,
              ),
              SizedBox(height: 20),
              RoundedTextFieldContainer(
                hintText: "Enter your Email.",
                onChnaged: (value) {},
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              RoundedPasswordFieldContainer(
                hintText: "Enter your password.",
                onChnaged: (value) {},
                icon: Icons.lock,
                // suffixIcon: Icons.visibility,
              ),
              SizedBox(height: 30),
              RoundedButton(
                text: "SIGNUP",
                onButtonPress: () {
                  print("Signup");
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
                    text: "Already have an account ? ",
                  ),
                  TextContainer(
                    text: "Sign In",
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                  )
                ],
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(icon: 'assets/icons/facebook.svg',onPress: () => _onPressShare(context)),
                                    SizedBox(width: 20),
                                    SocialIcon(icon: 'assets/icons/twitter.svg'),
                                    SizedBox(width: 20),
                                    SocialIcon(icon: 'assets/icons/google-plus.svg')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  
  _onPressShare(BuildContext context) async {
     final RenderBox box = context.findRenderObject() as RenderBox;

      await Share.share("text",
          subject: "subjet",
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
      }
  }

class SocialIcon extends StatelessWidget {
  final String icon;
  final Function onPress;

  const SocialIcon({
    Key key,
    this.icon, 
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onPress,
          child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon, height: 20, width: 20)),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.7,
      child: Row(
        children: [
          DividerLine(),
          TextContainer(
            text: "OR",
            txtColor: Colors.purple[900],
            fontWeight: FontWeight.bold,
          ),
          DividerLine(),
        ],
      ),
    );
  }
}
