import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clinica_management/screens/apontamento/widgets/botao_voltar.dart';
import 'package:clinica_management/screens/apontamento/widgets/campo_info.dart';
import 'package:clinica_management/screens/apontamento/widgets/campo_data.dart';
import 'package:clinica_management/screens/apontamento/widgets/procedimentos.dart';
import 'package:clinica_management/screens/apontamento/widgets/botao_salvar.dart';

class ApontamentoScreen extends StatefulWidget {
  const ApontamentoScreen({Key? key}) : super(key: key);

  @override
  State<ApontamentoScreen> createState() => _ApontamentoScreenState();
}

class _ApontamentoScreenState extends State<ApontamentoScreen> {
  late bool _favorito = false;

  _renderizarBotaoFavorito() {
    if (_favorito == true) {
      return const Icon(
        Icons.favorite,
        color: Color(0xFFF84B5A),
        size: 25.0,
      );
    }

    return const Icon(
      Icons.favorite_outline_outlined,
      color: Color(0xFFF84B5A),
      size: 25.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 35),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
            child: Wrap(
              spacing: 20,
              runSpacing: 30,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                BotaoVoltar(onPressed: () {
                  Navigator.pop(context);
                }),
                Text(
                  'Apontamento',
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    textStyle: const TextStyle(
                        color: Color(0xFFF84B5A),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xF3F3F3F3),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 0),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _favorito = !_favorito;
                              });
                            },
                            child: Container(
                                height: 40,
                                width: 40,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: _favorito
                                      ? Colors.white
                                      : Colors.transparent,
                                  border: Border.all(
                                    width: 1,
                                    color: _favorito
                                        ? Colors.transparent
                                        : const Color(0xFFF84B5A),
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                ),
                                child: _renderizarBotaoFavorito()),
                          ),
                        ),
                        const CampoInfo(
                            titulo: 'Paciente',
                            texto: 'Maria Francisca da Silva'),
                        const CampoInfo(
                            titulo: 'CNS', texto: '837451483130009'),
                        const CampoData(),
                        Text(
                          'Procedimentos Realizados',
                          style: GoogleFonts.getFont(
                            'Montserrat',
                            textStyle: const TextStyle(
                                color: Color(0xFF263138),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Procedimentos(),
                        BotaoSalvar(onPressed: () {}),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
