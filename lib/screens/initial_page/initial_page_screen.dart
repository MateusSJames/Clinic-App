import 'package:clinica_management/screens/initial_page/widgets/botaoEntrar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 35.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0,),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  Text('Bem-vindo(a)!', 
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      textStyle: const TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF84B5A,
                        ), 
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text('iCER é um sistema para \n gerenciamento de clínicas.\n Aqui você poderá realizar\n apontamentos dos atendimentos\n realizados com seus pacientes.',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      textStyle: const TextStyle(
                        fontSize: 17.0,
                        color: Color(0xFFF84B5A),
                        decoration: TextDecoration.none,
                      ), 
                    ), 
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15,),
                  Image.asset('assets/loading.png'),
                  const SizedBox(height: 40,),
                  Text('Faça login para continuar', 
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFFF84B5A),
                        decoration: TextDecoration.none,
                      ), 
                    ),
                  ),
                  const SizedBox(height: 30),
                  BotaoEntrar(onPressed: (){}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}