
import 'package:bloco_de_notas/model/Nota.dart';
import 'package:bloco_de_notas/model/NotaService.dart';
import 'package:bloco_de_notas/view/ListaDeNotas.dart';
import 'package:bloco_de_notas/view/recursos/Appbar.dart';
import 'package:bloco_de_notas/view/recursos/MenuDrawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NovaNota extends StatefulWidget {
  @override
  State createState() => NovaNotaState();

}

class NovaNotaState extends State<NovaNota> {

  final nota = TextEditingController();
  final titulo = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              child: TextField(
                textAlign: TextAlign.center,
                controller: titulo,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown.shade900
                ),
                decoration: InputDecoration(
                  hintText: "Digite o Título Aqui", 
                  hintStyle: TextStyle(
                    color: Colors.brown.shade900,
                    fontSize: 20
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)), 
                ),
              ),
            ),

            Container(
              width: 600,
              height: 1000,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown.shade100
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),            
                maxLines: null,
                controller: nota,
                decoration: InputDecoration(
                  hintText: "Digite Sua Nota Aqui", 
                  hintStyle: TextStyle(
                    color: Colors.brown.shade900,
                    fontSize: 20
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,  
                ),           
              ),
        
                
            ),
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: FaIcon(
          FontAwesomeIcons.save,
          size: 32
        ),
        onPressed: () {
          cadastrar();
        }
      )
    );
  }

  void cadastrar() {
    NotaService service = new NotaService();

    int ultimoID = service.listarNotas().length;

    Nota objetoNota = new Nota(texto: nota.text, id: ultimoID, titulo: titulo.text);

    String mensagem = service.adicionarNota(objetoNota);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          mensagem,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade300
          ),
        ),
        duration: Duration(milliseconds: 1800),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.grey.shade800
      )
    );

    Future.delayed(
      Duration(milliseconds: 2000), () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => new ListaDeNotas()
          )
        );
      }
    );
  }
}