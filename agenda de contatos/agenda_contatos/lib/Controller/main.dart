
import 'package:agenda_contatos/View/Home.dart';
import 'package:agenda_contatos/View/recursos/estilo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: "Agenda de Contatos",
    home: new Home(),
    debugShowCheckedModeBanner: false,
    theme: estilo(),
  )
);