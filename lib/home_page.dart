import 'package:flutter/material.dart';

class MiWidgetStatefull extends StatefulWidget {
  const MiWidgetStatefull({super.key});

  @override
  State<MiWidgetStatefull> createState() => _MiWidgetStatefullState();
}

class _MiWidgetStatefullState extends State<MiWidgetStatefull> {
  String texto="Hola! Soy un Stateful Widget";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(texto,style: TextStyle(fontSize: 35),textAlign: TextAlign.center), 
          ElevatedButton(onPressed: (){texto="Este es el nuevo valor"; 
          print(texto);
          setState(() {});},
        child: Text("Cambiar texto"))],
        ),
      ),
    );
  }
}

class MiWidgetEstatico extends StatelessWidget {
  String textoMostrar="Hola! Soy un Stateless Widget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicativo de estados'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text(
            'Hola! Soy un Stateless Widget',
            style: TextStyle(fontSize: 30)
            ),
            ElevatedButton(
              onPressed: (){
                textoMostrar="Hola como estas";
                print(textoMostrar);},
            child: Text("Cambiar el valor de la variable a hola como estas")
            )
          ]
        ),
      ),
    );
  }
}