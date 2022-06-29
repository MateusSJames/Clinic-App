import 'package:flutter/material.dart';

class CamposCadastro extends StatelessWidget {
  final String? label;
  const CamposCadastro({ Key? key, required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
        ),
        label: Text(label!),
      ),
    );
  }
}