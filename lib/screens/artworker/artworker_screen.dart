import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:my_school_friend/localization/app_localization.dart';
import 'package:my_school_friend/screens/artworker/my_custom_painter.dart';

class Artworker extends StatefulWidget {
  @override
  _ArtworkerState createState() => _ArtworkerState();
}

class _ArtworkerState extends State<Artworker> {
  List<Offset> _points = [];
  Color currentColor;
  double stroke;

  @override
  void initState() {
    super.initState();
    currentColor = Colors.black;
    stroke = 2;
  }

  void pickPenColor() {
    showDialog(
      context: context,
      child: AlertDialog(
        title:
            Text('${AppLocalizations.of(context).translate('select_color')}'),
        content: SingleChildScrollView(
          child: BlockPicker(
            pickerColor: currentColor,
            onColorChanged: (color) {
              setState(() {
                currentColor = color;
              });
            },
          ),
        ),
        actions: [
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.grey[900].withOpacity(.6),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Text(
              '${AppLocalizations.of(context).translate('cancel_button')}',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Stack(
        children: [
          buildDrawingTable(context),
          BackButton(
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          buildMenuBar(context),
        ],
      ),
    );
  }

  Container buildDrawingTable(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            RenderBox object = context.findRenderObject();
            Offset _localPosition = object.globalToLocal(
              details.globalPosition,
            );
            _points = List.from(_points)..add(_localPosition);
          });
        },
        onPanEnd: (details) => _points.add(null),
        child: CustomPaint(
          painter: MyCustomPainter(
            points: _points,
            customColor: currentColor,
            customStroke: stroke,
          ),
          size: Size.infinite,
        ),
      ),
    );
  }

  Padding buildMenuBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: EdgeInsets.symmetric(
          vertical: 150,
        ),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[800],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.color_lens,
                color: Colors.white,
              ),
              onPressed: () => pickPenColor(),
            ),
            RotatedBox(
              quarterTurns: 1,
              child: Slider(
                min: 1,
                max: 10,
                activeColor: currentColor,
                value: stroke,
                onChanged: (v) {
                  setState(() {
                    stroke = v;
                  });
                },
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.layers_clear,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _points.clear();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
