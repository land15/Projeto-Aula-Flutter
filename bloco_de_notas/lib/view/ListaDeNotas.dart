import 'package:bloco_de_notas/model/Nota.dart';
import 'package:bloco_de_notas/model/NotaService.dart';
import 'package:bloco_de_notas/view/AcessarNota.dart';
import 'package:bloco_de_notas/view/recursos/Appbar.dart';
import 'package:bloco_de_notas/view/recursos/MenuDrawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListaDeNotas extends StatefulWidget {
  @override
  State createState() => ListaDeNotasState();

}

class ListaDeNotasState extends State<ListaDeNotas> {
  NotaService service = NotaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: Appbar(),

      drawer: MenuDrawer(),

      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
        itemCount: service.listarNotas().length,
        itemBuilder: (BuildContext context, int index) {

          Nota objetoNota = service.listarNotas().elementAt(index);

          return Container(
            color: Colors.brown.shade100,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    objetoNota.titulo,
                    style: TextStyle(
                      color: Colors.brown.shade900,
                      fontSize: 24
                    )
                  ),
                ],
              ),

              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.penAlt,
                  color: Colors.brown.shade900,
                  size: 32
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new AcessarNota(id: objetoNota.id,)
                    )
                  );
                }     
              )
            ),
          );
        }
      )  
    );
  }

}