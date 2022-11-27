
import 'package:bloco_de_notas/view/Home.dart';
import 'package:bloco_de_notas/view/ListaDeNotas.dart';
import 'package:bloco_de_notas/view/NovaNota.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(
        color: Colors.brown.shade900,
        fontSize: 20
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              "MENU",
              style: TextStyle(
                color: Colors.brown.shade900,
                fontSize: 50
              ),
              textAlign: TextAlign.start,
            ),            
          ),

          SizedBox(height: 20,),

          ListTile(
            title: mostrarTitulo("HOME"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.home, size: 32, color: Colors.brown.shade900,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
              );
            },
          ),

          SizedBox(height: 20,),

          ListTile(
            title: mostrarTitulo("CRIAR NOVA NOTA"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.pen, size: 32, color: Colors.brown.shade900,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NovaNota())
              );
            },
          ),

          SizedBox(height: 20,),

          ListTile(
            title: mostrarTitulo("MINHAS NOTAS"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.clipboard, size: 32, color: Colors.brown.shade900,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListaDeNotas())
              );
            },
          ),
          
        ],
      ),
    );
  }


}