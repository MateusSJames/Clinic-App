import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const procedimentos = [
  {
    "id": "01.01.01.002-8",
    "descricao":
        "ATIVIDADE EDUCATIVA / ORIENTACAO EM GRUPO NA ATENCAO ESPECIALIZADA"
  },
  {
    "id": "02.11.10.001-3",
    "descricao": "APLICACAO DE TESTE P/ PSICODIAGNOSTICO"
  },
  {
    "id": "03.01.01.004-8",
    "descricao":
        "CONSULTA DE PROFISSIONAIS DE NIVEL SUPERIOR NA ATENCAO ESPECIALIZADA"
  },
  {"id": "03.01.04.003-6", "descricao": "TERAPIA EM GRUPO"},
  {"id": "03.01.04.004-4", "descricao": "TERAPIA INDIVIDUAL"},
  {
    "id": "03.01.05.001-5",
    "descricao": "ACOMPANHAMENTO E AVALIACAO DOMICILIAR DE PACIENTE C/ DOENÇA"
  },
  {
    "id": "03.01.07.002-4",
    "descricao":
        "ACOMPANHAMENTO DE PACIENTE EM REABILITACAO EM COMUNICACAO ALTERNATIVA"
  },
  {
    "id": "03.01.07.004-0",
    "descricao": "ACOMPANHAMENTO NEUROPSICOLOGICO DE PACIENTE EM REABILITACAO"
  },
  {
    "id": "03.01.07.005-9",
    "descricao": "ACOMPANHAMENTO PSICOPEDAGOGICO DE PACIENTE EM REABILITACAO"
  },
  {
    "id": "03.01.07.006-7",
    "descricao":
        "ATENDIMENTO / ACOMPANHAMENTO EM REABILITAÇÃO NAS MULTIPLAS DEFICIÊNCIAS"
  },
  {
    "id": "03.01.07.007-5",
    "descricao": "ATENDIMENTO / ACOMPANHAMENTO DE PACIENTE EM REABILITACAO DO"
  },
  {
    "id": "03.01.07.009-1",
    "descricao":
        "ATENDIMENTO EM OFICINA TERAPEUTICA II P/ PORTADOR DE NECESSIDADES ESPECIAIS"
  },
  {
    "id": "03.01.07.010-5",
    "descricao":
        "ATENDIMENTO/ACOMPANHAMENTO INTENSIVO DE PACIENTE EM REABILITACAO FISICA"
  },
  {
    "id": "03.01.07.012-1",
    "descricao":
        "TRATAMENTO INTENSIVO DE PACIENTE EM REABILITACAO FISICA (1 TURNO PACIENTE)"
  },
  {
    "id": "03.01.07.013-0",
    "descricao":
        "TRATAMENTO INTENSIVO DE PACIENTE EM REABILITACAO FISICA (2 TURNOS PACIENTE)"
  },
  {"id": "03.01.08.016-0", "descricao": "ATENDIMENTO EM PSICOTERAPIA DE GRUPO"},
  {
    "id": "03.01.08.017-8",
    "descricao": "ATENDIMENTO INDIVIDUAL EM PSICOTERAPIA"
  }
];

class Procedimentos extends StatefulWidget {
  const Procedimentos({Key? key}) : super(key: key);

  @override
  State<Procedimentos> createState() => _ProcedimentosState();
}

class _ProcedimentosState extends State<Procedimentos> {
  List<String>? _procedimentosSelecionados = [];

  _buildChild(String id, String descricao) {
    if (_procedimentosSelecionados!.contains(id)) {
      return OutlinedButton(
        onPressed: () {
          setState(() {
            _procedimentosSelecionados!.remove(id);
          });
        },
        child: Text(
          id + ' - ' + descricao,
          style: GoogleFonts.getFont(
            'Montserrat',
            textStyle: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
          ),
        ),
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: const Color(0xFFF84B5A)),
      );
    }
    return OutlinedButton(
      onPressed: () {
        setState(() {
          _procedimentosSelecionados!.add(id);
        });
      },
      child: Text(
        id + ' - ' + descricao,
        style: GoogleFonts.getFont(
          'Montserrat',
          textStyle: const TextStyle(
              color: Color(0xFF8B9296),
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        side: const BorderSide(
          color: Color(0xFF8B9296),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 340.0,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: procedimentos.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SizedBox(
                        height: 46.0,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: _buildChild(
                            procedimentos[index]
                                [procedimentos[index].keys.first]!,
                            procedimentos[index]
                                [procedimentos[index].keys.last]!)));
              },
            ),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
