
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detalhe extends StatelessWidget {

final String foto = "img/bolo_milho.jpg";
final String nomeReceita = "BOLO DE MILHO CREMOSO";
final String tempoPreparo = "40 min";
final String rendimento = "12 porções";
final String favoritos = "1223";
final String comentarios = "243";



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(foto),

        Container(
          color: Colors.orange.shade700,
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                nomeReceita,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [                  
                  Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidClock,
                        size: 32,
                        color: Colors.white,
                      ),

                      SizedBox(height: 10,),

                      Text(
                        "Preparo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),

                      SizedBox(height: 10,),

                      Text(
                        tempoPreparo,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      )

                    ],
                  ),

                  Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.cheese,
                        color: Colors.white,
                        size: 32,
                      ),

                      SizedBox(height: 10,),

                      Text(
                        "Rendimento",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),

                      SizedBox(height: 10,),

                      Text(
                        rendimento,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),

                  Column(),

                  Column(),
                ],
              )
            ],
          ),
        ),
      
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bookOpen,
                    color: Colors.orange.shade700,
                    size: 32,
                  ),

                  Text(
                    "Ingredientes",
                    style: TextStyle(
                      color: Colors.orange.shade700,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(""),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}