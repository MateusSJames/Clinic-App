// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BotaoEntrar extends StatelessWidget {
  final VoidCallback? onPressed;
  const BotaoEntrar({ Key? key, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SizedBox(
      height: 50.0,
      width: 220.0,
      child: OutlinedButton(
        onPressed: onPressed, 
        child: const Text('Entrar', style: TextStyle(color: Color(0xFFF84B5A), fontSize: 18.0),),
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          side: const BorderSide(color: Color(0xFFF84B5A),)
        ),
      ),
    );
  }
}