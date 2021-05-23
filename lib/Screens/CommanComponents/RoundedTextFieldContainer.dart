import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterui/Screens/CommanComponents/TextFeildContainer.dart';

class RoundedTextFieldContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChnaged;
  final TextInputType keyboardType;

  const RoundedTextFieldContainer({
    Key key,
    this.hintText = "Enter some input",
    this.icon = Icons.person,
    this.onChnaged,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChnaged,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: Colors.purple,
            ),
            border: InputBorder.none),
        keyboardType: keyboardType,
        autofocus: false,
      ),
    );
  }
}
