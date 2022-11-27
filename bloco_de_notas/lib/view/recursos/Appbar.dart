
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Appbar extends AppBar {

  Appbar() : super(

    automaticallyImplyLeading: false,
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
      "Bloco de Notas",
      style: TextStyle(
        color: Colors.brown.shade900,
        fontSize: 30
      ),
    ),

    iconTheme: IconThemeData(color: Colors.brown.shade900)
  );
}