import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class CampoData extends StatefulWidget {
  const CampoData({Key? key}) : super(key: key);

  @override
  State<CampoData> createState() => _CampoDataState();
}

class _CampoDataState extends State<CampoData> {
  String _dataSelecionada = DateFormat.yMd("pt_BR").format(DateTime.now());

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? d = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2050),
    );
    if (d != null) {
      setState(() {
        _dataSelecionada = DateFormat.yMd("pt_BR").format(d);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF8B9296)),
          borderRadius: const BorderRadius.all(Radius.circular(30.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 250,
            height: 20.0,
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            alignment: Alignment.centerLeft,
            child: Text('Data do Atendimento',
                style: GoogleFonts.getFont(
                  'Montserrat',
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 99, 108, 114),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ),
                textAlign: TextAlign.start),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Text(
                  _dataSelecionada,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    textStyle: const TextStyle(
                        color: Color(0xFF263138),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                onTap: () {
                  _selectDate(context);
                },
              ),
              IconButton(
                icon: const Icon(Icons.calendar_today),
                tooltip: '',
                onPressed: () {
                  _selectDate(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
