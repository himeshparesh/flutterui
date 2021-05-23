import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterui/Screens/CommanComponents/TextFeildContainer.dart';

class RoundedPasswordFieldContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChnaged;
  final TextInputType keyboardType;
  final IconData suffixIcon;
  final bool secureText;
  final Function onPressVisibility;

  const RoundedPasswordFieldContainer({
    Key key,
    this.hintText = "Enter some input",
    this.icon = Icons.visibility,
    this.onChnaged,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.secureText = false, 
    this.onPressVisibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: secureText,
        onChanged: onChnaged,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: Colors.purple,
            ),
            suffixIcon: IconButton(
              onPressed: onPressVisibility,
              iconSize: 20,
              icon:Icon(
                suffixIcon,
                color: Colors.purple,
              ),
            ),
            border: InputBorder.none),
        keyboardType: keyboardType,
        autofocus: false,
      ),
    );
  }
}
