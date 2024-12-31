import 'package:flutter/material.dart';

class Data {
  // tmp data for testing only

  static final tilesTmp = [
    TileItem(
        id: "0", color: Color(0xff0DDEAE), image: "", title: "Zaplanuj podroz"),
    TileItem(
        id: "1",
        color: Colors.blue,
        image: "image2.jpeg",
        title: "Muzeum historyczne w Bielsku Bialej"),
    TileItem(id: "2", color: Color(0xff0794D3), image: "", title: "Szlaki"),
    TileItem(
        id: "3",
        color: Color(0xff0794D3),
        image: "image3.jpeg",
        title: "Muzeum historyczne w Bielsku Bialej"),
    TileItem(
        id: "4",
        color: Colors.grey,
        image: "image1.jpeg",
        title: "Muzeum historyczne w Bielsku Bialej"),
    TileItem(
        id: "5",
        color: Colors.grey,
        image: "image2.jpeg",
        title: "Muzeum historyczne w Bielsku Bialej"),
    TileItem(
        id: "6",
        color: Colors.grey,
        image: "image3.jpeg",
        title: "Muzeum historyczne w Bielsku Bialej"),
    TileItem(
        id: "7",
        color: Colors.grey,
        image: "image2.jpeg",
        title: "Muzeum historyczne w Bielsku Bialej"),
    TileItem(
        id: "8",
        color: Colors.yellow,
        image: "image1.jpeg",
        title: "Muzeum historyczne w Bielsku Bialej"),
  ];

  List<TileItem> tilesArr = [];

  List<TileItem> get tiles {
    return tilesArr;
  }

  set tiles(List<TileItem> tiles) {
    tilesArr = tiles;
  }

  //// explore details data

  static final List<ExploreContentData> exploreList = [
    ExploreContentData(
        title: "Planetarium – Śląski Park Nauki w Chorzowie",
        images: ['./assets/images/image1.jpeg', './assets/images/image2.jpeg'],
        dailySchedule: [],
        copy:
            "Planetarium Śląskie powstało w 1955 roku jako pierwsza tego rodzaju placówka w Polsce. W 2018 roku rozpoczął się proces przebudowy i modernizacji, który zakończono cztery lata później. Jesteśmy obecnie jednym z najnowocześniejszych parków nauki na świecie. Prezentujemy zagadnienia związane z trzema dziedzinami nauki: sejsmologią, meteorologią i astronomią. Niespotykane w innych podobnych miejscach stanowiska ekspozycyjnie nie tylko pokazują różne zjawiska fizyczne, ale także pozwalają ich doświadczać. U nas można przeżyć trzęsienie Ziemi, stanąć tuż przy prawdziwej błyskawicy, czy odbyć symulowany lot w kosmos.Nowoczesny system projekcyjny pozwala nam wyświetlić na sferycznym ekranie około 100 milionów gwiazd i zabrać widzów w najdalsze zakątki Wszechświata.",
        phone: "+48 606 606 600",
        email: "edi@toastermedia.net",
        offers: ["1", "2", "3"]),
  ];

  static final List<ExploreOfferData> exploreOffersList = [
    ExploreOfferData(
        id: "1",
        title: "Zwiedzanie obserwatorium astronomicznego",
        images: ['./assets/images/image1.jpeg'],
        copy:
            "Planetarium Śląskie powstało w 1955 roku jako pierwsza tego rodzaju placówka w Polsce. W 2018 roku rozpoczął się proces przebudowy i modernizacji, który zakończono cztery lata później. Jesteśmy obecnie jednym z najnowocześniejszych parków nauki na świecie. Prezentujemy zagadnienia związane z trzema dziedzinami nauki: sejsmologią, meteorologią i astronomią. Niespotykane w innych podobnych miejscach stanowiska ekspozycyjnie nie tylko pokazują różne zjawiska fizyczne, ale także pozwalają ich doświadczać. U nas można przeżyć trzęsienie Ziemi, stanąć tuż przy prawdziwej błyskawicy, czy odbyć symulowany lot w kosmos.Nowoczesny system projekcyjny pozwala nam wyświetlić na sferycznym ekranie około 100 milionów gwiazd i zabrać widzów w najdalsze zakątki Wszechświata.",
        phone: "+48 606 606 600",
        email: "edi@toastermedia.net"),
    ExploreOfferData(
        id: "2",
        title: "Symulatory lotu w kosmos3",
        images: ['./assets/images/image2.jpeg'],
        copy:
            "Planetarium Śląskie powstało w 1955 roku jako pierwsza tego rodzaju placówka w Polsce. W 2018 roku rozpoczął się proces przebudowy i modernizacji, który zakończono cztery lata później. Jesteśmy obecnie jednym z najnowocześniejszych parków nauki na świecie. Prezentujemy zagadnienia związane z trzema dziedzinami nauki: sejsmologią, meteorologią i astronomią. Niespotykane w innych podobnych miejscach stanowiska ekspozycyjnie nie tylko pokazują różne zjawiska fizyczne, ale także pozwalają ich doświadczać. U nas można przeżyć trzęsienie Ziemi, stanąć tuż przy prawdziwej błyskawicy, czy odbyć symulowany lot w kosmos.Nowoczesny system projekcyjny pozwala nam wyświetlić na sferycznym ekranie około 100 milionów gwiazd i zabrać widzów w najdalsze zakątki Wszechświata.",
        phone: "+48 606 606 600",
        email: "edi@toastermedia.net"),
    ExploreOfferData(
        id: "3",
        title: "Zwiedzanie obserwatorium astronomicznego2",
        images: ['./assets/images/image3.jpeg'],
        copy:
            "Planetarium Śląskie powstało w 1955 roku jako pierwsza tego rodzaju placówka w Polsce. W 2018 roku rozpoczął się proces przebudowy i modernizacji, który zakończono cztery lata później. Jesteśmy obecnie jednym z najnowocześniejszych parków nauki na świecie. Prezentujemy zagadnienia związane z trzema dziedzinami nauki: sejsmologią, meteorologią i astronomią. Niespotykane w innych podobnych miejscach stanowiska ekspozycyjnie nie tylko pokazują różne zjawiska fizyczne, ale także pozwalają ich doświadczać. U nas można przeżyć trzęsienie Ziemi, stanąć tuż przy prawdziwej błyskawicy, czy odbyć symulowany lot w kosmos.Nowoczesny system projekcyjny pozwala nam wyświetlić na sferycznym ekranie około 100 milionów gwiazd i zabrać widzów w najdalsze zakątki Wszechświata.",
        phone: "+48 606 606 600",
        email: "edi@toastermedia.net"),
  ];

  static final List<OfferCardData> exploreOfferCardList = [
    OfferCardData(
      id: "1",
      image: './assets/images/card1.png',
      title: 'Zwiedzanie obserwatorium astronomicznego',
      subtitle: '"Serdecznie zapraszamy do zwiedzania naszego.."',
    ),
    OfferCardData(
      id: "2",
      image: './assets/images/card2.png',
      title: 'Symulatory lotu w kosmos',
      subtitle: '"Serdecznie zapraszamy do zwiedzania naszego.."',
    ),
    OfferCardData(
      id: "3",
      image: './assets/images/card1.png',
      title: 'Zwiedzanie obserwatorium astronomicznego2',
      subtitle: '"Serdecznie zapraszamy do zwiedzania naszego.."',
    ),
  ];

  Data();
}

class TileItem {
  String id;
  Color color;
  String image;
  String title;

  TileItem(
      {required this.id,
      required this.color,
      required this.image,
      required this.title});
}

class ExploreContentData extends ExploreOfferData {
  final List<Object>? dailySchedule;
  final List<String>? offers;

  ExploreContentData(
      {super.title,
      super.images,
      this.dailySchedule,
      this.offers,
      super.copy,
      super.phone,
      super.email});
}

class ExploreOfferData {
  final String? id;
  final String? title;
  final List<String>? images;
  final String? copy;
  final String? phone;
  final String? email;

  ExploreOfferData(
      {this.id, this.title, this.images, this.copy, this.phone, this.email});
}

class OfferCardData {
  final String id;
  final String image;
  final String title;
  final String subtitle;

  OfferCardData(
      {required this.id,
      required this.image,
      required this.title,
      required this.subtitle});
}
