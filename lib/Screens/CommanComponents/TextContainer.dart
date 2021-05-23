import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String text;
  final Color txtColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Function onPress;
  

  const TextContainer({
    Key key,
    this.text = "Type something",
    this.txtColor = Colors.black,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w100,
    this.onPress, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(text,
          style: TextStyle(
            color: txtColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          )),
    );
  }
}
