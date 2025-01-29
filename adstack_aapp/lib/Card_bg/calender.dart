import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarCard extends StatefulWidget {
  @override
  _CalendarCardState createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _selectedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                });
              },
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
