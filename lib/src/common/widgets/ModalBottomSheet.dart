import 'package:flutter/material.dart';
import 'package:flutter_application_explore/src/common/widgets/Calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class ModalBottomSheet {
  static showModal(__context, __title, __body) {
    showModalBottomSheet<void>(
        context: __context,
        isScrollControlled: true,
        useSafeArea: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (BuildContext context) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(spacing: 10, children: [
                  IconButton(
                      onPressed: () => {Navigator.pop(context)},
                      icon: Icon(
                        Icons.close_outlined,
                        color: Color(0xff0066B1),
                        size: 30,
                      )),
                  Text(__title,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                ]),
                __body
              ],
            ),
          );
        });
  }
}
