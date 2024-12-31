import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_explore/src/common/styles/ScreensStyles.dart';
import 'package:flutter_application_explore/src/common/widgets/Calendar.dart';
import 'package:flutter_application_explore/src/features/explore/ExploreOfferCard.dart';
import 'package:flutter_application_explore/src/common/widgets/ModalBottomSheet.dart';
import 'package:flutter_application_explore/src/data/data.dart';
import 'package:flutter_application_explore/src/helpers/Helpers.dart';
import 'package:flutter_application_explore/src/screens/Screen.dart';
import 'package:table_calendar/table_calendar.dart';

class ExploreDetailsScreen extends Screen {
  final ExploreContentData content;

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

  ExploreDetailsScreen({super.key, super.name, required this.content});

  void _onShowCallendarPressed(BuildContext context) {
    ModalBottomSheet.showModal(
        context, "Kalendarz imprez", Calendar(params: {}));
  }

  void _onShowOffersPressed(BuildContext context) {
    ModalBottomSheet.showModal(
        context,
        "Oferta stala",
        Column(
          spacing: 10,
          children: [
            SizedBox(
              height: 10,
            ),
            for (var i = 0; i < Data.exploreOfferCardList.length; i++)
              ExploreOfferCard(data: Data.exploreOfferCardList[i]),
            SizedBox(
              height: 50,
            )
          ],
        ));
  }

  showMySnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("data")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        appBar: AppBar(
          backgroundColor: Color(0xffEFEFEF),
          // title:
          //     Align(alignment: Alignment.centerLeft, child: new Text("sssss")),
          // leading: Icon(Icons.arrow_back),
        ),
        body: ListView(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Text(
                    content.title!,
                    style: exploreDetailsTitle,
                  )),
              Theme(
                  data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                      unselectedWidgetColor: Color(0xff0066B1),
                      colorScheme: ColorScheme.light(
                        primary: Color(0xff0066B1),
                      )),
                  child: ExpansionTile(
                      // trailing: Icon(
                      //   Icons.keyboard_arrow_down,
                      //   color: Color(0xff0066B1),
                      // ),
                      title: Row(spacing: 10, children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff0DDEAE),
                          ),
                        ),
                        Text(
                          "10.00-20.00",
                          style: TextStyle(
                              color: Color(0xff0066B1),
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                        )
                      ]),
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Poniedziałek \nWtorek \nŚroda \nCzwartek \nPiątek \nSobota \nNiedziela",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1.8,
                                          color: Color(0xff313130)),
                                    ),
                                    Text(
                                      "Zamknięte\n10.00–15.00\n10.00–18.00\n10.00–18.00\n10.00–18.00\n10.00–20.00\n10.00–20.00",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 1.8,
                                          color: Color(0xff313130)),
                                    )
                                  ],
                                ))
                          ],
                        )
                      ])),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 14),
                height: 230,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ...content.images!.map((item) => Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              )),
                        )))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () => {_onShowOffersPressed(context)},
                        icon: Column(children: [
                          Image.asset('./assets/icons/icon_1.png'),
                          Divider(
                            height: 5,
                          ),
                          Text("Oferta \nstala",
                              textAlign: TextAlign.center, style: iconsStyle),
                        ])),
                    IconButton(
                        onPressed: () {
                          _onShowCallendarPressed(context);
                        },
                        icon: Column(children: [
                          Image.asset('./assets/icons/icon_2.png'),
                          Divider(
                            height: 5,
                          ),
                          Text("Kalendarz \nimprez",
                              textAlign: TextAlign.center, style: iconsStyle),
                        ])),
                    IconButton(
                        onPressed: () => {debugPrint("clicked")},
                        icon: Column(children: [
                          Image.asset('./assets/icons/icon_3.png'),
                          Divider(
                            height: 5,
                          ),
                          Text("Pokaż \nna mapie",
                              textAlign: TextAlign.center, style: iconsStyle),
                        ])),
                    IconButton(
                        onPressed: () => {debugPrint("clicked")},
                        icon: Column(children: [
                          Image.asset('./assets/icons/icon_4.png'),
                          Divider(
                            height: 5,
                          ),
                          Text("Strona \nwww",
                              textAlign: TextAlign.center, style: iconsStyle),
                        ])),
                  ],
                ),
              ),
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
