import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:habito_meter/datetime/date_time.dart';

class MonthlySummary extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDate;
  const MonthlySummary({
    super.key,
    required this.datasets,
    required this.startDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     color: Colors.grey[400],
      //     border: Border.all(),
      //     borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(25),
      child: HeatMapCalendar(
        initDate: createDateTimeObject(startDate),
        //initDate: DateTime.now(),
        //endDate: DateTime.now().add(Duration(days: 31)),
        datasets: datasets,
        // datasets: {
        //   DateTime(2023, 9, 1): 3,
        //   DateTime(2023, 9, 2): 2,
        //   DateTime(2023, 9, 3): 6,
        //   DateTime(2023, 9, 4): 0,
        //   DateTime(2023, 9, 5): 1,
        //   DateTime(2023, 9, 6): 3,
        //   DateTime(2023, 9, 7): 8,
        //   DateTime(2023, 9, 8): 6,
        //   DateTime(2023, 9, 9): 10,
        //   DateTime(2023, 9, 10): 5,
        // },
        colorMode: ColorMode.color,
        defaultColor: Colors.grey[200],
        textColor: Colors.grey[850],
        showColorTip: false,
        //showText: true,
        //scrollable: true,
        weekTextColor: Colors.grey[600],
        //margin: ,
        flexible: false,
        monthFontSize: 16,
        size: 30,
        colorsets: const {
          1: Color.fromARGB(40, 255, 193, 8),
          2: Color.fromARGB(60, 255, 193, 8),
          3: Color.fromARGB(80, 255, 193, 8),
          4: Color.fromARGB(100, 255, 193, 8),
          5: Color.fromARGB(120, 255, 193, 8),
          6: Color.fromARGB(150, 255, 193, 8),
          7: Color.fromARGB(170, 255, 193, 8),
          8: Color.fromARGB(190, 255, 193, 8),
          9: Color.fromARGB(210, 255, 193, 8),
          10: Color.fromARGB(250, 255, 193, 8),
        },
        // onClick: (value) {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //       content: Text(
        //     //value.toString(),
        //     "OK",
        //   )));
        // },
      ),
    );
  }
}
