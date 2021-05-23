import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key, 
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'assets/images/signup_top.png',
              width: size.width * 0.30,
            ),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: Image.asset('assets/images/main_bottom.png',
                width: size.width * 0.15),
            bottom: 0,
            left: 0,
          ),
          child
        ],
      ),
    );
  }
}
