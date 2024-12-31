import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: must_be_immutable
class Calendar extends StatelessWidget {
  Calendar({super.key, required Object params});

  var params;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  void setState(Null Function() param0) {}

  // Map<DateTime, List<Event>> events = {};
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: TableCalendar(
            // Calendar configuration...
            firstDay: DateTime.utc(2010, 12, 31),
            lastDay: DateTime.utc(2030, 01, 01),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            rangeSelectionMode: _rangeSelectionMode,
            eventLoader: null, //_getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.monday,
            onDaySelected: null, //_onDaySelected,
            onRangeSelected: null, //_onRangeSelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          )),
      Padding(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: Text("Wyczysc")),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: Text("Pokaz wyniki (24)")),
          ],
        ),
      )
    ]);
  }
}
