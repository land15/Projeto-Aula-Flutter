

import 'package:bloco_de_notas/model/Nota.dart';
import 'package:bloco_de_notas/model/NotaService.dart';
import 'package:bloco_de_notas/view/recursos/Appbar.dart';
import 'package:bloco_de_notas/view/recursos/MenuDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcessarNota extends StatelessWidget {
  final int id;

  AcessarNota({ required this.id });

  final NotaService service = NotaService();

  @override
  Widget build(BuildContext context) {
    Nota objetoNota = service.listarNotas().elementAt(this.id);

    return Scaffold(

      appBar: Appbar(),

      drawer: MenuDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20,),

            Container(
              alignment: Alignment.center,
              width: 400,
              height: 60,
              child: Text(
                objetoNota.titulo,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown.shade900
                ),
              ),
            ),

            Container(
              width: 600,
              height: 1000,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown.shade100
              ),
              child: Text(
                objetoNota.texto,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
        
                
            ),
          ],
        )
      ),
    );
  }

}