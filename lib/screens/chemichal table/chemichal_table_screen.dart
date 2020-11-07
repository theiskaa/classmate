import 'package:flutter/material.dart';
import 'package:my_school_friend/localization/app_localization.dart';
import 'package:my_school_friend/screens/chemichal%20table/lantanidler_aktinidler.dart';
import 'package:my_school_friend/widgets/chemichalContainers.dart';

class ChemichalTableScreen extends StatelessWidget {
  const ChemichalTableScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).translate('periodic_table_appbar'),
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            buildListView(context),
            SizedBox(height: 30),
            colorMeaningsList(context),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Container colorMeaningsList(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.only(
          left: 10,
        ),
        children: [
          Column(
            children: [
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.red[400],
                text: AppLocalizations.of(context).translate('red_meaning'),
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.deepOrange[200],
                text: AppLocalizations.of(context).translate('orange_meaning'),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.yellow,
                text: AppLocalizations.of(context).translate('yellow_meaning'),
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.lightBlue[300],
                text: AppLocalizations.of(context).translate('blue_meaning'),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.grey[400],
                text: AppLocalizations.of(context).translate('grey_meaning'),
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.brown[200],
                text: AppLocalizations.of(context).translate('brown_meaning')
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.red[100],
                text: AppLocalizations.of(context).translate('pink_meaning'),
              ),
              SizedBox(
                height: 20,
              ),
              ColorMeaningsContainer(
                height: 65,
                width: 250,
                color: Colors.greenAccent,
                text: AppLocalizations.of(context).translate('green_meaning'),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget buildListView(BuildContext context) {
    return Container(
      height: 610,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 8, top: 8),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 2),
          firstColumn(),
          SizedBox(width: 10),
          seccondColumn(),
          SizedBox(width: 10),
          thirdColumn(context),
          SizedBox(width: 10),
          fourthColum(context),
          SizedBox(width: 10),
          fifthColumn(),
          SizedBox(width: 10),
          sixthColumn(),
          SizedBox(width: 10),
          seventh(),
          SizedBox(width: 10),
          eighthColumn(),
          SizedBox(width: 10),
          ninthColumn(),
          SizedBox(width: 10),
          tenthColumn(),
          SizedBox(width: 10),
          eleventh(),
          SizedBox(width: 10),
          twelfth(),
          SizedBox(width: 10),
          thirteenth(),
          SizedBox(width: 10),
          fourteenth(),
          SizedBox(width: 10),
          fifteenth(),
          SizedBox(width: 10),
          sixteenth(),
          SizedBox(width: 10),
          seventeenthColumn(),
          SizedBox(width: 10),
          eighteenth(),
          SizedBox(width: 10),
        ],
      ),
    );
  }
  //!
  //!
  //!

  firstColumn() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to H screen.
          },
          t1: "1",
          t2: "H",
          tGrup: "G1",
          tPeriot: "P1",
          color: Colors.greenAccent,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.black,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Li screen.
          },
          t1: "3",
          t2: "Li",
          tGrup: "G1",
          tPeriot: "P2",
          color: Colors.redAccent,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Na screen.
          },
          t1: "11",
          t2: "Na",
          tGrup: "G1",
          tPeriot: "P3",
          color: Colors.redAccent,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to K screen.
          },
          t1: "19",
          t2: "K",
          tGrup: "G1",
          tPeriot: "P4",
          color: Colors.redAccent,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Rb screen.
          },
          t1: "37",
          t2: "Rb",
          tGrup: "G1",
          tPeriot: "P5",
          color: Colors.redAccent,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Cs screen.
          },
          t1: "55",
          t2: "Cs",
          tGrup: "G1",
          tPeriot: "P6",
          color: Colors.redAccent,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Fr screen.
          },
          t1: "87",
          t2: "Fr",
          tGrup: "G1",
          tPeriot: "P7",
          color: Colors.redAccent,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
      ],
    );
  }

  seccondColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Be screen.
          },
          t1: "4",
          t2: "Be",
          tGrup: "G2",
          tPeriot: "P2",
          color: Colors.deepOrange[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Mg screen.
          },
          t1: "12",
          t2: "Mg",
          tGrup: "G2",
          tPeriot: "P3",
          color: Colors.deepOrange[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ca screen.
          },
          t1: "20",
          t2: "Ca",
          tGrup: "G2",
          tPeriot: "P4",
          color: Colors.deepOrange[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Sr screen.
          },
          t1: "38",
          t2: "Sr",
          tGrup: "G2",
          tPeriot: "P5",
          color: Colors.deepOrange[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ba screen.
          },
          t1: "56",
          t2: "Ba",
          tGrup: "G2",
          tPeriot: "P6",
          color: Colors.deepOrange[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ra screen.
          },
          t1: "88",
          t2: "Ra",
          tGrup: "G2",
          tPeriot: "P7",
          color: Colors.deepOrange[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white70,
          borderr: Border.all(),
        ),
      ],
    );
  }

  thirdColumn(context) {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Sc screen.
          },
          t1: "21",
          t2: "Sc",
          tGrup: "G3",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Y screen.
          },
          t1: "39",
          t2: "Y",
          tGrup: "G3",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          //Lantanidler
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LantanidlerAktinidler(),
              ),
            );
          },
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.purple[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LantanidlerAktinidler(),
              ),
            );
          },
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.pink[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  fourthColum(context) {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ti screen.
          },
          t1: "22",
          t2: "Ti",
          tGrup: "G4",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Zr screen.
          },
          t1: "40",
          t2: "Zr",
          tGrup: "G4",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Hf screen.
          },
          t1: "72",
          t2: "Hf",
          tGrup: "G4",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Rf screen.
          },
          t1: "104",
          t2: "Rf",
          tGrup: "G4",
          tPeriot: "P7",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  fifthColumn() {
    return Column(children: [
      ChemichalContainer(
        onPress: () {},
        t1: "",
        t2: "",
        tGrup: "",
        tPeriot: "",
        color: Colors.white,
        textColor: Colors.white,
        grupAndPeriotColor: Colors.white,
      ),
      ChemichalContainer(
        onPress: () {},
        t1: "",
        t2: "",
        tGrup: "",
        tPeriot: "",
        color: Colors.white,
        textColor: Colors.white,
        grupAndPeriotColor: Colors.white,
      ),
      ChemichalContainer(
        onPress: () {},
        t1: "",
        t2: "",
        tGrup: "",
        tPeriot: "",
        color: Colors.white,
        textColor: Colors.white,
        grupAndPeriotColor: Colors.white,
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to V screen.
        },
        t1: "23",
        t2: "V",
        tGrup: "G5",
        tPeriot: "P4",
        color: Colors.red[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Nb screen.
        },
        t1: "41",
        t2: "Nb",
        tGrup: "G5",
        tPeriot: "P5",
        color: Colors.red[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Ta screen.
        },
        t1: "73",
        t2: "Ta",
        tGrup: "G5",
        tPeriot: "P6",
        color: Colors.red[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Db screen.
        },
        t1: "105",
        t2: "Db",
        tGrup: "G5",
        tPeriot: "P4",
        color: Colors.red[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
    ]);
  }

  sixthColumn() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Cr screen.
          },
          t1: "24",
          t2: "Cr",
          tGrup: "G6",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Mo screen.
          },
          t1: "42",
          t2: "Mo",
          tGrup: "G6",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to W screen.
          },
          t1: "74",
          t2: "W",
          tGrup: "G6",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Sg screen.
          },
          t1: "106",
          t2: "Sg",
          tGrup: "G6",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  seventh() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Mn screen.
          },
          t1: "25",
          t2: "Mn",
          tGrup: "G7",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Mn screen.
          },
          t1: "43",
          t2: "Tc",
          tGrup: "G7",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Re screen.
          },
          t1: "75",
          t2: "Re",
          tGrup: "G7",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Bh screen.
          },
          t1: "107",
          t2: "Bh",
          tGrup: "G7",
          tPeriot: "P7",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  eighthColumn() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Mn screen.
          },
          t1: "26",
          t2: "Fe",
          tGrup: "G8",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ru screen.
          },
          t1: "44",
          t2: "Ru",
          tGrup: "G8",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Os screen.
          },
          t1: "76",
          t2: "Os",
          tGrup: "G8",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Hs screen.
          },
          t1: "108",
          t2: "Hs",
          tGrup: "G8",
          tPeriot: "P7",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  ninthColumn() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Co screen.
          },
          t1: "27",
          t2: "Co",
          tGrup: "G9",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Rh screen.
          },
          t1: "45",
          t2: "Rh",
          tGrup: "G9",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ir screen.
          },
          t1: "77",
          t2: "Ir",
          tGrup: "G9",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Mt screen.
          },
          t1: "109",
          t2: "Mt",
          tGrup: " G\n 9",
          tPeriot: "P7",
          color: Colors.blueGrey[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  tenthColumn() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ni screen.
          },
          t1: "28",
          t2: "Ni",
          tGrup: " G\n10",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Pd screen.
          },
          t1: "46",
          t2: "Pd",
          tGrup: " G\n10",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Pt screen.
          },
          t1: "78",
          t2: "Pt",
          tGrup: " G\n10",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ds screen.
          },
          t1: "110",
          t2: "Ds",
          tGrup: " G\n10",
          tPeriot: "P7",
          color: Colors.blueGrey[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  eleventh() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Cu screen.
          },
          t1: "29",
          t2: "Cu",
          tGrup: " G\n11",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ag screen.
          },
          t1: "47",
          t2: "Ag",
          tGrup: " G\n11",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Au screen.
          },
          t1: "79",
          t2: "Au",
          tGrup: " G\n11",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Rg screen.
          },
          t1: "111",
          t2: "Rg",
          tGrup: " G\n11",
          tPeriot: "P7",
          color: Colors.blueGrey[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  twelfth() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Zn screen.
          },
          t1: "30",
          t2: "Zn",
          tGrup: " G\n12",
          tPeriot: "P4",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Cd screen.
          },
          t1: "48",
          t2: "Cd",
          tGrup: " G\n12",
          tPeriot: "P5",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Hg screen.
          },
          t1: "80",
          t2: "Hg",
          tGrup: " G\n12",
          tPeriot: "P6",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Cn screen.
          },
          t1: "112",
          t2: "Cn",
          tGrup: " G\n12",
          tPeriot: "P7",
          color: Colors.red[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }

  thirteenth() {
    return Column(
      children: [
        ChemichalContainer(
          onPress: () {},
          t1: "",
          t2: "",
          tGrup: "",
          tPeriot: "",
          color: Colors.white,
          textColor: Colors.white,
          grupAndPeriotColor: Colors.white,
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to B screen.
          },
          t1: "5",
          t2: "B",
          tGrup: " G\n13",
          tPeriot: "P2",
          color: Colors.brown[200],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Al screen.
          },
          t1: "13",
          t2: "Al",
          tGrup: " G\n13",
          tPeriot: "P3",
          color: Colors.grey[400],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Ga screen.
          },
          t1: "31",
          t2: "Ga",
          tGrup: " G\n13",
          tPeriot: "P4",
          color: Colors.grey[400],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to In screen.
          },
          t1: "49",
          t2: "In",
          tGrup: " G\n13",
          tPeriot: "P5",
          color: Colors.grey[400],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Tl screen.
          },
          t1: "81",
          t2: "Tl",
          tGrup: " G\n13",
          tPeriot: "P6",
          color: Colors.grey[400],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
        ChemichalContainer(
          onPress: () {
            // TODO: Naviagtor to Uut screen.
          },
          t1: "113",
          t2: "Uut",
          tGrup: " G\n13",
          tPeriot: "P7",
          color: Colors.blueGrey[100],
          textColor: Colors.black,
          grupAndPeriotColor: Colors.white,
          borderr: Border.all(),
        ),
      ],
    );
  }
}

fourteenth() {
  return Column(
    children: [
      ChemichalContainer(
        onPress: () {},
        t1: "",
        t2: "",
        tGrup: "",
        tPeriot: "",
        color: Colors.white,
        textColor: Colors.white,
        grupAndPeriotColor: Colors.white,
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to C screen.
        },
        t1: "6",
        t2: "C",
        tGrup: " G\n14",
        tPeriot: "P2",
        color: Colors.greenAccent,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Si screen.
        },
        t1: "14",
        t2: "Si",
        tGrup: " G\n14",
        tPeriot: "P3",
        color: Colors.brown[200],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Ge screen.
        },
        t1: "32",
        t2: "Ge",
        tGrup: " G\n14",
        tPeriot: "P4",
        color: Colors.brown[200],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Sn screen.
        },
        t1: "50",
        t2: "Sn",
        tGrup: " G\n14",
        tPeriot: "P5",
        color: Colors.grey[400],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Sn screen.
        },
        t1: "82",
        t2: "Pb",
        tGrup: " G\n14",
        tPeriot: "P6",
        color: Colors.grey[400],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Fl screen.
        },
        t1: "114",
        t2: "Fl",
        tGrup: " G\n14",
        tPeriot: "P7",
        color: Colors.blueGrey[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
    ],
  );
}

fifteenth() {
  return Column(
    children: [
      ChemichalContainer(
        onPress: () {},
        t1: "",
        t2: "",
        tGrup: "",
        tPeriot: "",
        color: Colors.white,
        textColor: Colors.white,
        grupAndPeriotColor: Colors.white,
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to N screen.
        },
        t1: "7",
        t2: "N",
        tGrup: " G\n15",
        tPeriot: "P2",
        color: Colors.greenAccent,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to P screen.
        },
        t1: "15",
        t2: "P",
        tGrup: " G\n15",
        tPeriot: "P3",
        color: Colors.greenAccent,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to N screen.
        },
        t1: "33",
        t2: "As",
        tGrup: " G\n15",
        tPeriot: "P4",
        color: Colors.brown[200],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Sb screen.
        },
        t1: "51",
        t2: "Sb",
        tGrup: " G\n15",
        tPeriot: "P5",
        color: Colors.brown[200],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Bi screen.
        },
        t1: "83",
        t2: "Bi",
        tGrup: " G\n15",
        tPeriot: "P6",
        color: Colors.grey[400],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Sb screen.
        },
        t1: "115",
        t2: "Uup",
        tGrup: " G\n15",
        tPeriot: "P7",
        color: Colors.blueGrey[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
    ],
  );
}

sixteenth() {
  return Column(
    children: [
      ChemichalContainer(
        onPress: () {},
        t1: "",
        t2: "",
        tGrup: "",
        tPeriot: "",
        color: Colors.white,
        textColor: Colors.white,
        grupAndPeriotColor: Colors.white,
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to O screen.
        },
        t1: "8",
        t2: "O",
        tGrup: " G\n16",
        tPeriot: "P2",
        color: Colors.greenAccent,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to S screen.
        },
        t1: "16",
        t2: "S",
        tGrup: " G\n16",
        tPeriot: "P3",
        color: Colors.greenAccent,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Se screen.
        },
        t1: "34",
        t2: "Se",
        tGrup: " G\n16",
        tPeriot: "P4",
        color: Colors.greenAccent,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Te screen.
        },
        t1: "52",
        t2: "Te",
        tGrup: " G\n16",
        tPeriot: "P5",
        color: Colors.brown[200],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Po screen.
        },
        t1: "82",
        t2: "Po",
        tGrup: " G\n16",
        tPeriot: "P6",
        color: Colors.brown[200],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Lv screen.
        },
        t1: "116",
        t2: "Lv",
        tGrup: " G\n16",
        tPeriot: "P7",
        color: Colors.blueGrey[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
    ],
  );
}

seventeenthColumn() {
  return Column(
    children: [
      ChemichalContainer(
        onPress: () {},
        t1: "",
        t2: "",
        tGrup: "",
        tPeriot: "",
        color: Colors.white,
        textColor: Colors.white,
        grupAndPeriotColor: Colors.white,
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to F screen.
        },
        t1: "9",
        t2: "F",
        tGrup: " G\n17",
        tPeriot: "P2",
        color: Colors.yellow,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Cl screen.
        },
        t1: "17",
        t2: "Cl",
        tGrup: " G\n17",
        tPeriot: "P3",
        color: Colors.yellow,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Br screen.
        },
        t1: "35",
        t2: "Br",
        tGrup: " G\n17",
        tPeriot: "P4",
        color: Colors.yellow,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to I screen.
        },
        t1: "53",
        t2: "I",
        tGrup: " G\n17",
        tPeriot: "P5",
        color: Colors.yellow,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to At screen.
        },
        t1: "85",
        t2: "At",
        tGrup: " G\n17",
        tPeriot: "P6",
        color: Colors.yellow,
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Cl screen.
        },
        t1: "117",
        t2: "Uus",
        tGrup: " G\n17",
        tPeriot: "P7",
        color: Colors.blueGrey[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.white,
        borderr: Border.all(),
      ),
    ],
  );
}

eighteenth() {
  return Column(
    children: [
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to He screen.
        },
        t1: "2",
        t2: "He",
        tGrup: " G\n18",
        tPeriot: "P1",
        color: Colors.lightBlue[300],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Ne screen.
        },
        t1: "10",
        t2: "Ne",
        tGrup: " G\n18",
        tPeriot: "P2",
        color: Colors.lightBlue[300],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to He screen.
        },
        t1: "18",
        t2: "Ar",
        tGrup: " G\n18",
        tPeriot: "P3",
        color: Colors.lightBlue[300],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Kr screen.
        },
        t1: "36",
        t2: "Kr",
        tGrup: " G\n18",
        tPeriot: "P4",
        color: Colors.lightBlue[300],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Xe screen.
        },
        t1: "54",
        t2: "Xe",
        tGrup: " G\n18",
        tPeriot: "P5",
        color: Colors.lightBlue[300],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Rn screen.
        },
        t1: "86",
        t2: "Rn",
        tGrup: " G\n18",
        tPeriot: "P6",
        color: Colors.lightBlue[300],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
      ChemichalContainer(
        onPress: () {
          // TODO: Naviagtor to Uuo screen.
        },
        t1: "118",
        t2: "Uuo",
        tGrup: " G\n18",
        tPeriot: "P7",
        color: Colors.blueGrey[100],
        textColor: Colors.black,
        grupAndPeriotColor: Colors.black,
        borderr: Border.all(),
      ),
    ],
  );
}
