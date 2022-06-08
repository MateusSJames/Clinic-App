import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width*0.85,
              height: 170,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 214, 211, 211),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
                child: Column(
                  children: [
                    Text(
                      'Vamos encontrar seu paciente',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 25,),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                        hintText: 'Buscar Paciente',
                        //labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        prefixIcon: Icon(Icons.search, size: 30,color: Colors.grey,),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}