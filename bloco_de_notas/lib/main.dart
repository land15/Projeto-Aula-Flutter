import 'package:bloco_de_notas/view/Home.dart';
import 'package:bloco_de_notas/view/recursos/Estilo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: "Bloco de Notas",
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: estilo(),
  )
);