
import 'package:bloco_de_notas/model/NotaService.dart';
import 'package:bloco_de_notas/view/ListaDeNotas.dart';
import 'package:bloco_de_notas/view/NovaNota.dart';
import 'package:bloco_de_notas/view/recursos/Appbar.dart';
import 'package:bloco_de_notas/view/recursos/MenuDrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() => HomeState();
}

class HomeState extends State<Home> {

  NotaService service = new NotaService();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: Appbar(),

      drawer: MenuDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => NovaNota())
                          );
                        }, 
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          width: 400,
                          height: 60,
                          child: Text(
                            "Criar Nova Nota",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.brown.shade900,
                              fontSize: 30,
                            ),
                          )

                        ),

                        style:ElevatedButton.styleFrom(
                                primary: Colors.brown.shade100
                              ),
                      );
                    }
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => ListaDeNotas())
                          );
                        }, 
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          width: 400,
                          height: 60,
                          child: Text(
                            "Notas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.brown.shade900,
                              fontSize: 30,
                            ),
                          )

                        ),

                        style:ElevatedButton.styleFrom(
                                primary: Colors.brown.shade100
                              ),
                      );
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}