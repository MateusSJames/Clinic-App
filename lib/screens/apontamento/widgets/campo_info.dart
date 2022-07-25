import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampoInfo extends StatelessWidget {
  final String? titulo;
  final String? texto;

  const CampoInfo({Key? key, this.titulo, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF8B9296)),
            borderRadius: const BorderRadius.all(Radius.circular(30.0))),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 20.0,
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              alignment: Alignment.centerLeft,
              child: Text(titulo!,
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    textStyle: const TextStyle(
                        color: Color(0xFF8B9296),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600),
                  ),
                  textAlign: TextAlign.start),
            ),
            Text(
              texto!,
              style: GoogleFonts.getFont(
                'Montserrat',
                textStyle: const TextStyle(
                    color: Color(0xFF263138),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
