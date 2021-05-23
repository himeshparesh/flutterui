import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: Divider(
      color: Colors.black54,
      height: 1,
        ),
    );
  }
}
