import 'package:clinica_management/screens/cadastro_completo_page/widgets/campos_cadastro.dart';
import 'package:clinica_management/screens/cadastro_completo_page/widgets/salvar.dart';
import 'package:flutter/material.dart';

class CadastroCompleto extends StatefulWidget {
  const CadastroCompleto({ Key? key }) : super(key: key);

  @override
  State<CadastroCompleto> createState() => _CadastroCompletoState();
}

class _CadastroCompletoState extends State<CadastroCompleto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastrar Paciente',
          style: TextStyle(
            color: Color(0xFFF84B5A),
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFF84B5A)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
            child: Column(
              children: [
                CamposCadastro(label: 'Nome'),
                SizedBox(height: 30,),
                CamposCadastro(label: 'CNS'),
                SizedBox(height: 30,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.41,
                        child: CamposCadastro(label: 'CEP')
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.4,
                        child: CamposCadastro(label: 'Cód.Município')
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                CamposCadastro(label: 'Endereço'),
                SizedBox(height: 30,),
                CamposCadastro(label: 'Email'),
                SizedBox(height: 30,),
                CamposCadastro(label: 'Contato'),
                SizedBox(height: 50,),
                BotaoSalvar(onPressed: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}