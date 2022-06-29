import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  const OptionButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49.0,
      width: 362.0,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: GoogleFonts.getFont(
            'Montserrat',
            textStyle: const TextStyle(
                color: Color(0xFFF84B5A),
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        style: OutlinedButton.styleFrom(
            backgroundColor: const Color(0xF3F3F3F3),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            side: const BorderSide(
              color: Color(0xF3F3F3F3),
            )),
      ),
    );
  }
}
