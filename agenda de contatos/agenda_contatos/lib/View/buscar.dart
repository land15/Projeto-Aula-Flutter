
import 'package:agenda_contatos/Model/contato.dart';
import 'package:agenda_contatos/Model/contatoService.dart';
import 'package:agenda_contatos/View/Cadastro.dart';
import 'package:agenda_contatos/View/perfil.dart';
import 'package:agenda_contatos/View/recursos/BarraSuperior.dart';
import 'package:agenda_contatos/View/recursos/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget {
  @override
  State createState() => new BuscaState();

}

class BuscaState extends State<Busca> {
  ContatoService service = new ContatoService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(),

      drawer: new MenuDrawer(),

      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 78),
        itemCount: service.listarContatos().length,
        itemBuilder: (BuildContext context, int index) {
          Contato contato = service.listarContatos().elementAt(index);

          return Container(
            color: Colors.blue,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      contato.foto,
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Column(
                    children: [
                      Text(
                        contato.nome + " " + contato.sobrenome,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 24
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "51 992966651",
                        style: TextStyle(
                          fontSize: 18
                        ),
                      ),

                    ],
                  ),
                ],
              ),

              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight, 
                  color: Colors.grey,
                  size:32
                ),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Perfil(id: contato.id,))
                  );
                },
              ),
            ),
          );
        } 
      ),

      floatingActionButton: FloatingActionButton(

        child: FaIcon(
          FontAwesomeIcons.plus,
          size: 24,
        ),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cadastro())
          );
        },
      ),

    );
  }

}