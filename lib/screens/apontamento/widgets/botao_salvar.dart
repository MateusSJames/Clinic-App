import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoSalvar extends StatelessWidget {
  final VoidCallback? onPressed;
  const BotaoSalvar({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: MediaQuery.of(context).size.width * 0.7,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          'Salvar',
          style: GoogleFonts.getFont(
            'Montserrat',
            textStyle: const TextStyle(
                color: Color(0xFFF84F6B),
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            side: const BorderSide(
              color: Color(0xFFF84B5A),
            )),
      ),
    );
  }
}
