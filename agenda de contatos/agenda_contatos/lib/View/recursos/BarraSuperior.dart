
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar {
  BarraSuperior() : super(
    automaticallyImplyLeading: false,//esconde o icone original
    centerTitle: true,

    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }, 
          icon: FaIcon(
            FontAwesomeIcons.bars
          )
        );
      }
    ),

    title: Text(
      "Agenda de Contatos",
      style: TextStyle(
        color: Colors.red,
        fontSize: 28
      ),
    ),

    iconTheme: IconThemeData(color: Colors.red)
  );
}