import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuUserScreen extends StatefulWidget {
  const MenuUserScreen({ Key? key }) : super(key: key);

  @override
  State<MenuUserScreen> createState() => _MenuUserScreenState();
}

class _MenuUserScreenState extends State<MenuUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Olá, Dr. Hans Chucrutes',
                style: GoogleFonts.getFont(
                  'Montserrat',
                  textStyle: const TextStyle(
                    fontSize: 17.0,
                    color: Color(0xFFF84B5A),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Container(
                  height: 50,
                  width: 50,
                  color: const Color.fromARGB(255, 214, 211, 211),
                  child: const Icon(Icons.person, color: Colors.black,),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){}, 
        child: const Icon(
          Icons.add
        ),
        backgroundColor: const Color(0xFFF84B5A),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.home_outlined, size: 35,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: IconButton(
                      onPressed: (){}, 
                      icon: const FaIcon(FontAwesomeIcons.heart, size: 30,),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: IconButton(
                      onPressed: (){}, 
                      // ignore: deprecated_member_use
                      icon: const FaIcon(FontAwesomeIcons.edit, size: 30,),
                    ),
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.person, size: 30,),
                  ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}