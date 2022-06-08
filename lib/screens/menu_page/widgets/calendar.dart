import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarField extends StatefulWidget {
  const CalendarField({
    Key? key,
  }) : super(key: key);

  @override
  State<CalendarField> createState() => _CalendarFieldState();
}

class _CalendarFieldState extends State<CalendarField> {
  String month = DateFormat(DateFormat.MONTH, 'pt_BR').format(DateTime.now());
  String year = DateFormat(DateFormat.YEAR, 'pt_BR').format(DateTime.now());
  String day = DateFormat(DateFormat.DAY, 'pt_BR').format(DateTime.now());
  List<String> datesOfWeek = [];

  @override
  void initState() {
    super.initState();
    String initWeek = DateFormat(DateFormat.DAY, 'pt_BR').format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)));
    String finalWeek = DateFormat(DateFormat.DAY, 'pt_BR').format(DateTime.now().add(Duration(days: DateTime.daysPerWeek - DateTime.now().weekday)));
    datesOfWeek.add(initWeek);
    for (int i = 1; i < 6; i++) {
      String aux = DateFormat(DateFormat.DAY, 'pt_BR')
          .format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)).add(Duration(days: i)));
      
      datesOfWeek.add(aux);
    }
    datesOfWeek.add(finalWeek);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 350,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 18.0,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '$month, $year',
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: 40,
                          height: 60,
                          color: day == datesOfWeek[0] ? const Color(0xFFF84B5A) : null,
                          child: Column(
                            children: [
                              Text(
                                'SEG',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[0] ? Colors.white : Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                datesOfWeek[0],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[0] ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: 40,
                          height: 60,
                          color: day == datesOfWeek[1] ? const Color(0xFFF84B5A) : null,
                          child: Column(
                            children: [
                              Text(
                                'TER',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[1] ? Colors.white : Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                datesOfWeek[1],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[1] ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: 40,
                          height: 60,
                          color: day == datesOfWeek[2] ? const Color(0xFFF84B5A) : null,
                          child: Column(
                            children: [
                              Text(
                                'QUA',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[2] ? Colors.white : Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                datesOfWeek[2],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[2] ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: 40,
                          height: 60,
                          color: day == datesOfWeek[3] ? const Color(0xFFF84B5A) : null,
                          child: Column(
                            children: [
                              Text(
                                'QUI',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[3] ? Colors.white : Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                datesOfWeek[3],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[3] ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: 40,
                          height: 60,
                          color: day == datesOfWeek[4] ? const Color(0xFFF84B5A) : null,
                          child: Column(
                            children: [
                              Text(
                                'SEX',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[4] ? Colors.white : Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                datesOfWeek[4],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[4] ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: 40,
                          height: 60,
                          color: day == datesOfWeek[5] ? const Color(0xFFF84B5A) : null,
                          child: Column(
                            children: [
                              Text(
                                'SAB',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[5] ? Colors.white : Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                datesOfWeek[5],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[5] ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: 40,
                          height: 60,
                          color: day == datesOfWeek[6] ? const Color(0xFFF84B5A) : null,
                          child: Column(
                            children: [
                              Text(
                                'DOM',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[6] ? Colors.white : Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                datesOfWeek[6],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: day == datesOfWeek[6] ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
