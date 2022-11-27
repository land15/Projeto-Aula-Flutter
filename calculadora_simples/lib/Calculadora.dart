import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(":::Calculadora Simples:::")),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("+"),
                    color: Colors.blueAccent,
                    onPressed: somar),
                new MaterialButton(
                    child: new Text("-"),
                    color: Colors.blueAccent,
                    onPressed: subtracao),
                new MaterialButton(
                    child: new Text("X"),
                    color: Colors.blueAccent,
                    onPressed: multiplicacao),
                new MaterialButton(
                    child: new Text("÷"),
                    color: Colors.blueAccent,
                    onPressed: divisao)
              ],
            )
          ],
        ),
      ),
    );
  }

  var valor1;
  var valor2;
  var resultado;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);

      resultado = valor1 + valor2;
    });
  }

  void subtracao() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);

      resultado = valor1 - valor2;
    });
  }

  void multiplicacao() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);

      resultado = valor1 * valor2;
    });
  }

  void divisao() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);

      resultado = valor1 / valor2;
    });
  }
}
