
import 'package:agenda_contatos/Model/contato.dart';

class ContatoService {

  List<Contato> contatos = [];

  void cadastrarContato(Contato contato) {
    contatos.add(contato);
  }

  List listarContatos() {

    List<Contato> contatos = [
    Contato(id: 1, nome: "Beatriz", sobrenome: "Kern", email: "kern@gmail.com", fone: "52 992966651", foto: "img/1.png"),

    Contato(id: 2, nome: "Ana", sobrenome: "Buceta", email: "ana@gmail.com", fone: "52 992966651", foto: "img/2.png"),

    Contato(id: 3, nome: "Carlos", sobrenome: "Xereca", email: "xereca@gmail.com", fone: "52 992966651", foto: "img/3.png"),

    Contato(id: 4, nome: "Capela", sobrenome: "Beta", email: "beta_spirit@gmail.com", fone: "52 992966651", foto: "img/capela.jpeg"),

    ];

    return contatos;
  }

  
}