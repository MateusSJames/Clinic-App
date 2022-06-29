import 'package:clinica_management/helpers/database_helper.dart';
import 'package:clinica_management/models/paciente_simplificado.dart';
import 'package:mobx/mobx.dart';

part "pendentes_store.g.dart";

class ListaPacientesPendentes = _ListaPacientesPendentes with _$ListaPacientesPendentes;

abstract class _ListaPacientesPendentes with Store {

  @observable 
  ObservableList<PacienteSimplificado> pacientes = ObservableList.of([]);

  @action 
  Future<void> getPacientesPendentes() async {
    DatabaseHelper _dbhelper = DatabaseHelper();
    var paciente = await _dbhelper.getPacienteSimplificado();
    for(var element in paciente) {
      pacientes.add(element);
    }
  }
}