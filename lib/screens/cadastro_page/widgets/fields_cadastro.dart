import 'package:flutter/material.dart';

class FieldsCadastro extends StatelessWidget {
  final String nomeCampo;
  final TextEditingController controller;
  final String nomeLabel;
  final TextInputType? textInputType;
  final ValueChanged<String>? onSubmitted;
  const FieldsCadastro({ 
    Key? key, 
    required this.nomeCampo, 
    required this.nomeLabel,
    required this.controller, 
    this.textInputType,
    this.onSubmitted,
  }) : super(key: key);

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
          keyboardType: textInputType,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: nomeCampo,
          ),
          controller: controller,
          onSubmitted: onSubmitted,
        ),
      ],
    );
  }
}