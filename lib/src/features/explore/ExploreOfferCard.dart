import 'package:flutter/material.dart';
import 'package:flutter_application_explore/src/data/data.dart';
import 'package:flutter_application_explore/src/features/explore/ExploreOfferPage.dart';
import 'package:flutter_application_explore/src/helpers/Helpers.dart';

// ignore: must_be_immutable
class ExploreOfferCard extends StatelessWidget {
  const ExploreOfferCard({super.key, required this.data});

  final OfferCardData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {
              // debugPrint( Helpers.findById(Data.exploreOffersList, data.id))

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExploreOfferPage(
                      content:
                          Helpers.findById(Data.exploreOffersList, data.id)),
                ),
              )
            },
        child: SizedBox(
            height: 115,
            child: Card(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x10000000))),
                    child: Row(
                      children: [
                        Container(
                          width: 115,
                          height: 115,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(data.image),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                            width: 200,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    Text(data.title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            height: 1.1,
                                            color: Color(0xff0066B1))),
                                    Text(data.subtitle,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            height: 1.4,
                                            color: Color(0xff313130)))
                                  ],
                                ))),
                        Container(
                          width: 1,
                          height: 115,
                          decoration: BoxDecoration(color: Color(0x10000000)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.arrow_forward_sharp,
                              color: Color(0xff313130)),
                        )
                      ],
                    )))));
  }
}
