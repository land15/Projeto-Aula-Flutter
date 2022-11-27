import 'package:flutter/material.dart';
import 'package:tudo_saboroso/Detalhe.dart';


class TudoSaboroso extends StatefulWidget {
  @override
  State createState() => TudoSaborosoState();

}

class TudoSaborosoState extends State<TudoSaboroso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tudo Saboroso"),
        backgroundColor: Colors.orange.shade700,
        leadingWidth: 45,
        leading: Transform.translate(
          offset: Offset(5, 0),
          child: Image.asset("img/chef.png"),

          ),
        
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            Text(""),

            Text(""),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Detalhe()
      ),
    );
  }

}