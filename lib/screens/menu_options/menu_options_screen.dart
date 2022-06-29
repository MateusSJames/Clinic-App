import 'package:flutter/material.dart';
import 'package:clinica_management/screens/menu_options/widgets/arrow_left_button.dart';
import 'package:clinica_management/screens/menu_options/widgets/option_button.dart';

class MenuOptionsScreen extends StatelessWidget {
  const MenuOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 35),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 20,
              children: [
                ArrowLeftButton(onPressed: () {
                  Navigator.pop(context);
                }),
                OptionButton(onPressed: () {}, title: 'Cadastrar paciente'),
                OptionButton(onPressed: () {}, title: 'Iniciar atendimento'),
                OptionButton(onPressed: () {}, title: 'Solicitações pendentes'),
                OptionButton(onPressed: () {}, title: 'Relatórios'),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
