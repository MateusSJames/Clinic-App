import 'package:flutter/material.dart';

class FieldsCadastro extends StatelessWidget {
  final String nomeCampo;
  final String nomeLabel;
  const FieldsCadastro({ Key? key, required this.nomeCampo, required this.nomeLabel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            nomeLabel,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          )
        ),
        const SizedBox(height: 8,),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: nomeCampo,
          ),
        ),
      ],
    );
  }
}