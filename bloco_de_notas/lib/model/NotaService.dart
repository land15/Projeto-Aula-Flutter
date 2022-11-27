
import 'package:bloco_de_notas/model/Nota.dart';

class NotaService {

  static List<Nota> listaNotas = [];

  String adicionarNota(Nota nota) {
    listaNotas.add(nota);

    return "Nota adicionada";
  }

  List listarNotas() {
    return listaNotas;
  }
}