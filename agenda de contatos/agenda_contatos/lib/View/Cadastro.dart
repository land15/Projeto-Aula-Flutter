
import 'package:agenda_contatos/Model/contato.dart';
import 'package:agenda_contatos/Model/contatoService.dart';
import 'package:agenda_contatos/View/recursos/BarraSuperior.dart';
import 'package:agenda_contatos/View/recursos/Menu.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  State createState() => new CadastroState();
}

class CadastroState extends State<Cadastro> {

  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final fone = TextEditingController();
  final email = TextEditingController();
  final foto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: BarraSuperior(),

      drawer: MenuDrawer(),

      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade800
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  "Teste",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 24
                  ),
                ),
              ),

              campoInput("Nome", nome),
              campoInput("Sobrenome", sobrenome),
              campoInput("Foto", foto),
              campoInput("Fone", fone),
              campoInput("Email", email),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {

                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10
                          ),
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange
                        ),
                      );
                    }
                  ),

                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          limparCampos();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10
                          ),
                          child: Text(
                            "Limpar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                          primary: Colors.green
                        ),
                      );
                    }
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container campoInput(String nomeCampo, TextEditingController controlador) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: controlador,

        decoration: InputDecoration(
          labelText: nomeCampo,
          labelStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 18
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
          ),
        ),
      ),
    );
  }

  void limparCampos() {
    this.nome.text = "";
    this.sobrenome.text = "";
    this.foto.text = "";
    this.fone.text = "";
    this.email.text = "";
  }

  void cadastrar() {
    ContatoService service = new ContatoService();


  }

}