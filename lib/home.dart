import 'package:flutter/material.dart';
import 'package:myapp/text_widgets.dart';
import 'package:myapp/contact_form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personalizando Botões",
        style: TextStyle(color: Color(0xFFA470D4)),
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){},
              child: Text("Botão arredondado")
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: (){},
              child: Text("Botão com fundo colorido",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFA470D4),
                shadowColor: Colors.purple,
              )
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Navega para a tela de textos ao pressionar o botão
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextScreen()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Manipular textos"),
                  SizedBox(width: 8),
                  const Icon(Icons.text_fields),
                ],
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactForm()),
                );
              },
              child: Text("Abrir Formulário de Contato"),
            ),

            SizedBox(height: 20),
          ],
        )
      ),
    );
  }
}
