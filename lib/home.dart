import 'package:flutter/material.dart';

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
        title: Text("My first app <3"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 100, // Define a largura desejada
              height: 100, // Define a altura desejada
              child: Image.network(
                'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png',
                fit: BoxFit.cover, // Ajusta o ajuste da imagem
              ),
            ),

            Text("Flutter",
              style: TextStyle(
                fontSize: 50
              ),
            ),

            Text("Flutter is a powerful open-source UI toolkit developed by Google, enabling developers to create natively compiled applications for mobile, web, and desktop from a single codebase. Its ultimate strength lies in its use of the Dart programming language and its rich set of pre-designed widgets that facilitate fast and expressive app development. With Flutter, developers can delve into highly customizable and performant designs, achieving seamless experiences across multiple platforms!",
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            ElevatedButton(
              onPressed: (){},
              child: Text("Click Me")
            )
          ],
        )
      ),
    );
  }
}