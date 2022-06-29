import 'package:clinica_management/helpers/database_helper.dart';
import 'package:clinica_management/models/paciente_simplificado.dart';
import 'package:clinica_management/screens/solicitacoes_pendentes_page/widgets/botao_apontar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../../gerenciadores/pendentes_store.dart';

class SolicitacoesPendentes extends StatefulWidget {
  const SolicitacoesPendentes({ Key? key }) : super(key: key);

  @override
  State<SolicitacoesPendentes> createState() => _SolicitacoesPendentesState();
}

class _SolicitacoesPendentesState extends State<SolicitacoesPendentes> {

  DatabaseHelper _dbhelper = DatabaseHelper();
  List<PacienteSimplificado> pacientesPendentes = [];
  final _pacientesPendentes = ListaPacientesPendentes();

  @override
  void initState() {
    _pacientesPendentes.getPacientesPendentes();
    _pacientesPendentes.pacientes.map((element) => print(element));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitações Pendentes',
          style: TextStyle(
            color: Color(0xFFF84B5A),
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFF84B5A)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    isDense: true,
                    hintText: 'Digite o nome ou número do CNS',
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: const Icon(Icons.search, size: 30,color: Colors.grey,),
                  ),
                  onSubmitted: (value) async{
                    _pacientesPendentes.pacientes = ObservableList.of(await _dbhelper.getPacienteSimplificadoByName(value));
                  },
                ),
                const SizedBox(height: 20,),
                Observer(builder: (_) {
                  return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView.builder(
                    itemCount: _pacientesPendentes.pacientes.length,
                    itemBuilder: ((context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      
                      child: ClipPath(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.black, width: 8),
                            ),
                          ),
                          child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        _pacientesPendentes.pacientes[index].nome!,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Text(
                                        _pacientesPendentes.pacientes[index].cns!,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      BotaoApontamento(onPressed: (){}),
                                    ],
                                  ),
                                ),
              ),
                                ),
                                
                                
                              );
                            })),
                          );
                }),
                
                        ],
                      ),
                    ),
                  ),
                ),
    );
  }
}