// ignore_for_file: unused_field

import 'package:clinica_management/helpers/database_helper.dart';
import 'package:clinica_management/models/paciente_simplificado.dart';
import 'package:clinica_management/screens/cadastro_page/widgets/botaoCadastro.dart';
import 'package:clinica_management/screens/cadastro_page/widgets/fields_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({ Key? key }) : super(key: key);

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {

  final DatabaseHelper _dbhelper = DatabaseHelper();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cnsController = TextEditingController();
  final TextEditingController _dataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Cadastrar paciente',
          style: TextStyle(
            color: Color(0xFFF84B5A),
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFF84B5A)),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                FieldsCadastro(
                  nomeCampo: 'Digite o nome do paciente',
                  nomeLabel: 'Nome',
                  controller: _nomeController,
                ),
                const SizedBox(
                  height: 30,
                ),
                FieldsCadastro(
                  nomeCampo: 'Digite o número do cns do paciente',
                  nomeLabel: 'CNS',
                  controller: _cnsController,
                ),
                const SizedBox(
                  height: 30,
                ),
                FieldsCadastro(
                  nomeCampo: 'DD/MM/AAAA',
                  nomeLabel: 'Nascimento',
                  controller: _dataController,
                ),
                const SizedBox(
                  height: 70,
                ),
                BotaoCadastro(onPressed: () async {
                  var uuid = const Uuid();
                  PacienteSimplificado paciente = PacienteSimplificado(
                    id: uuid.v4(), 
                    nome: _nomeController.text, 
                    cns: _cnsController.text, 
                    nascimento: _dataController.text,
                  );
                  if(_cnsController.text.isEmpty || _nomeController.text.isEmpty || _dataController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Alguns dados não foram inseridos'),
                        backgroundColor: Colors.orange,
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                  await _dbhelper.insertPaciente(paciente);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Cadastro realizado com sucesso'),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 3),
                      ));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}