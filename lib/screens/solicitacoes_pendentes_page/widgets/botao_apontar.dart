// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BotaoApontamento extends StatelessWidget {
  final VoidCallback? onPressed;
  const BotaoApontamento({ Key? key, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SizedBox(
      height: 40.0,
      width: MediaQuery.of(context).size.width * 0.7,
      child: OutlinedButton(
        onPressed: onPressed, 
        child: const Text('Apontar Procedimento', style: TextStyle(color: Color(0xFFF84B5A), fontSize: 16.0),),
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          side: const BorderSide(color: Color(0xFFF84B5A),)
        ),
      ),
    );
  }
}