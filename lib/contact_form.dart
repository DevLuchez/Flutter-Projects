import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de Contato",
        style: TextStyle(color: Color(0xFFA470D4)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Nome de usuário",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                labelText: "E-mail",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Mensagem",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Parabéns! Você enviou sua primeira mensagem em Flutter!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFA470D4),
                shadowColor: Colors.purple,
              ),
              child: Text("Enviar",
                style: TextStyle(color: Colors.white),
              )
            ),
          ],
        ),
      ),
    );
  }
}
