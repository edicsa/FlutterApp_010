import 'package:flutter/material.dart';
import 'package:flutter_application_explore/src/common/widgets/Calendar.dart';
import 'package:flutter_application_explore/src/common/widgets/ModalBottomSheet.dart';
import 'package:flutter_application_explore/src/data/data.dart';
import 'package:flutter_application_explore/src/screens/Screen.dart';

class ExploreOfferPage extends Screen {
  final ExploreOfferData content;

  final TextStyle exploreDetailsTitle = TextStyle(
      fontFamily: "Roboto",
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: Color(0xff313130));

  final TextStyle iconsStyle = TextStyle(
      color: Color.fromARGB(180, 60, 60, 59),
      fontFamily: "Roboto",
      fontWeight: FontWeight.w900,
      fontSize: 12);

  final TextStyle icons2Style =
      TextStyle(fontWeight: FontWeight.w300, fontSize: 12);

  ExploreOfferPage({super.key, super.name, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        appBar: AppBar(
          backgroundColor: Color(0xffEFEFEF),
        ),
        body: ListView(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Text(
                content.title!,
                style: exploreDetailsTitle,
              )),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 14),
              height: 230,
              width: double.infinity,
              child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(content.images![0]),
                          fit: BoxFit.cover,
                        )),
                  ))),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Text(
              content.copy as String,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.6,
                  color: Color(0xff313130)),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Color.fromARGB(30, 0, 0, 0),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
            child: Column(
              spacing: 10,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Image.asset('./assets/icons/ikony_gorne-3.png'),
                    Text(
                      "Udogodnienia dla osób z niepełnosprawnością",
                      style: icons2Style,
                    )
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Image.asset('./assets/icons/ikony_gorne-4.png'),
                    Text(
                      "Parking",
                      style: icons2Style,
                    )
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Image.asset('./assets/icons/ikony_gorne-5.png'),
                    Text(
                      "Języki: polski, angielski",
                      style: icons2Style,
                    )
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Image.asset('./assets/icons/Union-7.png'),
                    Text(
                      "Płatne",
                      style: icons2Style,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Color.fromARGB(30, 0, 0, 0),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 20, 40, 40),
            child: Column(
              spacing: 10,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Image.asset('./assets/icons/phone.png'),
                    Text(
                      content.phone as String,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0066B1)),
                    )
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Image.asset('./assets/icons/mail.png'),
                    Text(
                      content.email as String,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0066B1)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 40, 40),
            child: Column(
              spacing: 10,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    IconButton(
                        onPressed: () => {debugPrint("clicked")},
                        icon: Image.asset('./assets/icons/fb.png')),
                    IconButton(
                        onPressed: () => {debugPrint("clicked")},
                        icon: Image.asset('./assets/icons/union.png')),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }

  void setState(Null Function() param0) {}
}
