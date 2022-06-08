import 'package:clinica_management/screens/cadastro_page/widgets/botaoCadastro.dart';
import 'package:clinica_management/screens/cadastro_page/widgets/fields_cadastro.dart';
import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({ Key? key }) : super(key: key);

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
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
                const FieldsCadastro(
                  nomeCampo: 'Digite o nome do paciente',
                  nomeLabel: 'Nome',
                ),
                const SizedBox(
                  height: 30,
                ),
                const FieldsCadastro(
                  nomeCampo: 'Digite o número do cns do paciente',
                  nomeLabel: 'CNS',
                ),
                const SizedBox(
                  height: 30,
                ),
                const FieldsCadastro(
                  nomeCampo: 'DD/MM/AAAA',
                  nomeLabel: 'Nascimento',
                ),
                const SizedBox(
                  height: 70,
                ),
                BotaoCadastro(onPressed: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}