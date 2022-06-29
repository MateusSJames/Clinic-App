import 'package:flutter/material.dart';

class ArrowLeftButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ArrowLeftButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFFF84B5A)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Color(0xFFF84B5A),
          size: 25.0,
        ),
      ),
    );
  }
}
