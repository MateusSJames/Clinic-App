// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pendentes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListaPacientesPendentes on _ListaPacientesPendentes, Store {
  late final _$pacientesAtom =
      Atom(name: '_ListaPacientesPendentes.pacientes', context: context);

  @override
  ObservableList<PacienteSimplificado> get pacientes {
    _$pacientesAtom.reportRead();
    return super.pacientes;
  }

  @override
  set pacientes(ObservableList<PacienteSimplificado> value) {
    _$pacientesAtom.reportWrite(value, super.pacientes, () {
      super.pacientes = value;
    });
  }

  late final _$getPacientesPendentesAsyncAction = AsyncAction(
      '_ListaPacientesPendentes.getPacientesPendentes',
      context: context);

  @override
  Future<void> getPacientesPendentes() {
    return _$getPacientesPendentesAsyncAction
        .run(() => super.getPacientesPendentes());
  }

  @override
  String toString() {
    return '''
pacientes: ${pacientes}
    ''';
  }
}
