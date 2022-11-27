
import 'package:agenda_contatos/View/Home.dart';
import 'package:agenda_contatos/View/buscar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  //simulação banco de dados
  final String usuario = "Gabriel Land";
  final String email = "lucas@gmail.com";
  final String fotoPerfil = "img/bolo_milho.jpg";


  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 18
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child : Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(50),
              ),
              
            ),
          ),

          ListTile(
            title: mostrarTitulo("HOME"),
            subtitle: Text("Pagina Inicial"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.home, size: 32, color: Colors.red,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
              );
            },
          ),

          ListTile(
            title: mostrarTitulo("CONTATOS"),
            subtitle: Text("Gerenciar Contatos"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight,),
            leading: FaIcon(FontAwesomeIcons.userFriends, size: 32, color: Colors.blue,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Busca())
              );
            },
          ),

          ListTile(
            title: mostrarTitulo("PERFIL"),
            subtitle: Text("Editar Informações"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight,),
            leading: FaIcon(FontAwesomeIcons.idCard, size: 32, color: Colors.green,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
              );
            },
          ),

          ListTile(
            title: mostrarTitulo("CONFIGURAÇÕS"),
            subtitle: Text("Ajustes no Sistema"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.cog, size: 32, color: Colors.pink,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
              );
            },
          ),

          ListTile(
            title: mostrarTitulo("LOGOUT"),
            subtitle: Text("Sair do sistema"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.signOutAlt, size: 32,color: Colors.grey,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
              );
            },
          )
        ],
      ),
    );
  }

}