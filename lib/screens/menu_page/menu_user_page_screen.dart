//import 'package:clinica_management/screens/menu_page/widgets/calendar.dart';
import 'package:clinica_management/screens/menu_page/widgets/calendar.dart';
import 'package:clinica_management/screens/menu_page/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
        onPressed: (){
          Navigator.of(context).pushNamed('/menu-options');
        }, 
        child: const Icon(
          Icons.add
        ),
        backgroundColor: const Color(0xFFF84B5A),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFF84B5A),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home_outlined, color: Colors.grey, size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: FaIcon(FontAwesomeIcons.heart, color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            // ignore: deprecated_member_use
            icon: FaIcon(FontAwesomeIcons.edit, color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person_outline, color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: const [
            SizedBox(height: 20,),
            SearchField(),
            SizedBox(height: 30,),
            CalendarField(),
            // Container(
            //   width: MediaQuery.of(context).size.width*0.85,
            //   height: 170,
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //     color: Color.fromARGB(255, 214, 211, 211),
            //   ),
            //   child: Column(
                
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}