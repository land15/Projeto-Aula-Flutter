
import 'package:agenda_contatos/View/Cadastro.dart';
import 'package:agenda_contatos/View/buscar.dart';
import 'package:agenda_contatos/View/recursos/BarraSuperior.dart';
import 'package:agenda_contatos/View/recursos/Menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();  

}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),

      drawer: MenuDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),

            Container(              
              padding: EdgeInsets.all(25),              
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Titulo App", 
                        style: TextStyle(
                        fontSize: 24, color: Colors.grey.shade300
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.search,
                                size: 24,
                                color: Colors.white,
                              ),

                              Text(
                                "Buscar Contatos",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24
                                ),
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Busca())
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          primary: Colors.red
                        ),
                      );
                    }
                  ),

                  SizedBox(height: 25,),

                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.plus,
                                size: 24,
                                color: Colors.white,                                
                              ),

                              Text(
                                "Cadastrar Contato",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24
                                ),
                              )
                            ],
                          ),
                          
                        ),

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cadastro())
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          primary: Colors.red.shade700
                        ),
                      );
                    },
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