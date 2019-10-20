import 'package:flutter/material.dart';

Color mainColor = Color(0xff0677BD);

class CustomButton extends StatelessWidget {
  final voidCallback;
  final text;
  final Color _mainColor;
  const CustomButton({
    Key key,
    @required Color mainColor,
    @required this.voidCallback,
    @required this.text,
  })  : _mainColor = mainColor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        height: 70,
        color: _mainColor,
        child: Center(
          child: Text(
            '$text',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
