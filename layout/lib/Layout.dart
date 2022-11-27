import 'dart:html';

import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Layout-Flutter"),
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("Itens do Menu")),
              ListTile(
                title: Text("Flutter"),
                subtitle: Text("Tudo são Widgets"),
                leading: Icon(Icons.flash_on),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Dart"),
                subtitle: Text("Dart é facil"),
                leading: Icon(Icons.mood),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              
              ListTile(
                title: Text("Cafessineo"),
                subtitle: Text("QUERO CAFEEEEE"),
                leading: Icon(Icons.coffee),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

            ],
          ),
        ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              content: Text("Esta é uma snackbar"),
              duration: Duration(milliseconds: 2500),
              behavior: SnackBarBehavior.floating,
              action: SnackBarAction(
                label: "X",
                onPressed: () {
                  //funçao
                },
              ),            
            );

            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },

          child: Text("Mostrar Snackbar"),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Configurações"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login")
        ],
      ),
    ));
  }
}
