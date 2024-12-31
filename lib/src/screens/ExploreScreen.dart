import 'package:flutter/material.dart';
import 'package:flutter_application_explore/main.dart';
import 'package:flutter_application_explore/src/screens/ExploreDetailsScreen.dart';
import 'package:flutter_application_explore/src/screens/Screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_application_explore/src/data/data.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: must_be_immutable
class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key, this.name, required this.callback});

  final name;
  final Function callback;
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(-33.86, 151.20);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                onTap: (index) {
                  callback(index == 1);
                },
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.blue,
                tabs: <Widget>[
                  Tab(text: "Lista"),
                  Tab(
                    text: "Mapa",
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            padding: const EdgeInsets.all(10),
            itemCount: Data.tilesTmp.length,
            itemBuilder: (context, index) {
              return Tile(
                index: index,
                id: Data.tilesTmp[index].id,
                extent: (index == 0 ? 1 : 2) * 90,
                backgroundColor: Data.tilesTmp[index].color,
                imageBkgn: Data.tilesTmp[index].image,
                title: Data.tilesTmp[index].title,
              );
            },
          ),
          GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              )),
        ]),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.index,
    this.id,
    this.extent,
    this.backgroundColor,
    this.imageBkgn,
    this.title,
  });

  final int index;
  final String? id;
  final double? extent;
  final Color? backgroundColor;
  final String? imageBkgn;
  final String? title;

  final double _borderRadius = 10;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
        fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white);

    return GestureDetector(
        onTap: () {
          // const snackBar = SnackBar(content: Text('Tap'));
          // ScaffoldMessenger.of(context).showSnackBar(snackBar);

          // debugPrint("id: $id");

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ExploreDetailsScreen(content: Data.exploreList[0]),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(0, 110, 139, 52),
              ),
              color: backgroundColor,
              borderRadius: BorderRadius.circular(_borderRadius),
              image: () {
                if (imageBkgn != "") {
                  return DecorationImage(
                    image: AssetImage('assets/images/$imageBkgn'),
                    fit: BoxFit.cover,
                  );
                } else {
                  return null;
                }
              }()),
          // color: backgroundColor ?? const Color.fromARGB(255, 110, 139, 52),
          height: extent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: double.maxFinite,
                decoration: imageBkgn != ""
                    ? BoxDecoration(
                        color: Color.fromARGB(100, 0, 0, 0),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(_borderRadius),
                            bottomRight: Radius.circular(_borderRadius)),
                      )
                    : null,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                        padding: const EdgeInsets.all(0.0),
                        // color: Colors.green,
                        width: double.maxFinite,
                        // height: 80.0,
                        child: Align(
                          alignment: FractionalOffset.bottomLeft,
                          child: Text(
                            title!,
                            style: textStyle,
                          ),
                        ))),
              )
            ],
          ),
        ));
  }
}
