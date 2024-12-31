import 'package:flutter/material.dart';
import 'package:flutter_application_explore/src/screens/Screen.dart';

class FilterSreen extends Screen {
  FilterSreen({super.key, super.name});

  TextStyle textStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff3C3C3B));

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<WidgetState> states) {
      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.selected
      };

      if (states.any(interactiveStates.contains)) {
        return Color(0xff0066B1);
      }

      return Colors.white;
    }

    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xffEFEFEF),
          title: Align(alignment: Alignment.centerLeft, child: Text("Flitruj")),
          // leading: Icon(Icons.arrow_back),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                children: [
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Kultura", style: textStyle),
                        Checkbox(
                            value: true,
                            fillColor:
                                WidgetStateProperty.resolveWith(getColor),
                            onChanged: (bool? value) => {})
                      ]),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Color.fromARGB(30, 0, 0, 0),
                      )),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Oświata", style: textStyle),
                        Checkbox(
                            value: false,
                            fillColor:
                                WidgetStateProperty.resolveWith(getColor),
                            onChanged: (bool? value) => {})
                      ]),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Color.fromARGB(30, 0, 0, 0),
                      )),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ochrona zdrowia", style: textStyle),
                        Checkbox(
                            value: true,
                            fillColor:
                                WidgetStateProperty.resolveWith(getColor),
                            onChanged: (bool? value) => {})
                      ]),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Color.fromARGB(30, 0, 0, 0),
                      )),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sport", style: textStyle),
                        Checkbox(
                            value: false,
                            fillColor:
                                WidgetStateProperty.resolveWith(getColor),
                            onChanged: (bool? value) => {})
                      ]),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Color.fromARGB(30, 0, 0, 0),
                      )),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Turystyka", style: textStyle),
                        Checkbox(
                            value: false,
                            fillColor:
                                WidgetStateProperty.resolveWith(getColor),
                            onChanged: (bool? value) => {})
                      ]),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Color.fromARGB(30, 0, 0, 0),
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Szukaj w odległości od swojej lokalizacji',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0x3C3C3BB2)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Color.fromARGB(30, 0, 0, 0),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0 km",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0x3C3C3BB2))),
                        Text("100 km",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0x3C3C3BB2))),
                      ]),
                  Slider(
                      value: 30.0,
                      max: 100,
                      divisions: 100,
                      label: "30",
                      thumbColor: Colors.white,
                      activeColor: Color(0xff0066B1),
                      onChanged: (double value) {
                        // setState(() {
                        //   _currentSliderValue = value;
                        // });
                      }),
                ],
              ),
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
                  )),
            ],
          ),
        ));
  }
}
