// ignore_for_file: prefer_conditional_assignment, unnecessary_this

import 'dart:io';

import 'package:clinica_management/models/paciente_simplificado.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  static DatabaseHelper? _databaseHelper;
  static Database? _database;

  String pacientetable = 'paciente';
  String pacienteId = 'id';
  String pacienteNome = 'nome';
  String pacienteCns = 'cns';
  String pacienteNasc = 'nascimento';

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if(_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }

    return _databaseHelper!;
  }

  Future<Database?> get database async {
    if(_database == null) {
      _database = await initializeDatabase();
    }

    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path  + 'paciente.db';

    var pacienteDatabase = await openDatabase(path, version: 1, onCreate: _createDb);

    return pacienteDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
      'CREATE TABLE $pacientetable($pacienteId TEXT, $pacienteNome TEXT, $pacienteCns TEXT, $pacienteNasc TEXT)'
    );
  }

  Future<int> insertPaciente(PacienteSimplificado paciente) async {

    Database? db = await this.database;

    var resultado = await db!.insert(pacientetable, paciente.toMap());

    return resultado;
  }

  Future<List<PacienteSimplificado>> getPacienteSimplificado() async {
    Database? db = await this.database;

    var pacientes = await db!.query(pacientetable);

    List<PacienteSimplificado> pacientesNome = pacientes.isNotEmpty ? pacientes.map((e) => PacienteSimplificado.fromMap(e)).toList() : [];

    return pacientesNome;
  }

  Future<List<PacienteSimplificado>> getPacienteSimplificadoByName(String nome) async {
    Database? db = await this.database;

    var pacientes = await db!.query(pacientetable,
    columns: [pacienteNome, pacienteCns, pacienteNasc],
    where: "$pacienteNome = ?",
    whereArgs: [nome]
    );

    List<PacienteSimplificado> pacientesNome = pacientes.isNotEmpty ? pacientes.map((e) => PacienteSimplificado.fromMap(e)).toList() : [];

    return pacientesNome;
  }

  Future<int> updatePaciente(PacienteSimplificado paciente) async {
    var db = await this.database;

    var resultado = await db!.update(pacientetable, paciente.toMap(),
      where: "$pacienteId = ?",
      whereArgs: [paciente.id]
    );

    return resultado;
  }

  Future<int> deletarPaciente(int id) async {
    var db = await this.database;

    int resultado = await db!.delete(pacientetable, where: "$pacienteId = ?", whereArgs: [id]);

    return resultado;
  }

  Future close() async {
    Database? db = await this.database;

    db!.close();
  }


}