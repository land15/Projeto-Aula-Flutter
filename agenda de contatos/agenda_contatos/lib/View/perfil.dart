
import 'package:agenda_contatos/Model/contato.dart';
import 'package:agenda_contatos/Model/contatoService.dart';
import 'package:agenda_contatos/View/recursos/BarraSuperior.dart';
import 'package:agenda_contatos/View/recursos/Menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Perfil extends StatelessWidget {

  final int id;

  Perfil({ required this.id });

  ContatoService service = new ContatoService();

  @override
  Widget build(BuildContext context) {

    Contato contato = service.listarContatos().elementAt(this.id -1);

    return Scaffold(
      appBar: BarraSuperior(),

      drawer: MenuDrawer(),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  contato.foto,
                  width: 300,
                  height: 350,
                ),
              ],
            ),

            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  contato.nome + " " + contato.sobrenome,
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 3,
                    wordSpacing: 3,
                    fontWeight: FontWeight.bold
                  ),                
                )                
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  contato.fone,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18
                  ),
                ),

                Text(
                  contato.email,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18
                  ),
                )
              ],
            ),

            Container(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Divider(height: 5,),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),

                    SizedBox(height: 15,),

                    Text(
                      "Ligar",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18
                      ),
                    )
                  ],
                ),

                 new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.solidCommentDots,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),

                    SizedBox(height: 15),

                    new Text(
                      "Mensagem",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18
                      )
                    )
                  ]
                ),

                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.video,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),

                    SizedBox(height: 15),

                    new Text(
                      "Vídeo",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18
                      )
                    )
                  ]
                ),

                 new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.solidEnvelope,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),

                    SizedBox(height: 15),

                    new Text(
                      "E-mail",
                      style: TextStyle(
                        color: Colors.orange.shade400,
                        fontSize: 18
                      )
                    )
                  ]
                ),            
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.purple,
        child: FaIcon(FontAwesomeIcons.pen),
        onPressed: () {
          //
        }
      )
    );
  }

}