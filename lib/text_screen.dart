import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manipulando Widgets de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto em negrito e sublinhado',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Texto em itálico e azul',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Texto grande e centralizado',
              style: TextStyle(
                fontSize: 24, // Aumenta o tamanho da fonte
              ),
              textAlign: TextAlign.center, // Centraliza o texto
            ),
            
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
