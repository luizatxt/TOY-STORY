import 'package:flutter/material.dart';
import 'quiz_page.dart';
import 'fundo_com_imagem.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FundoComImagem(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bem-vindo ao Quiz de Toy Story!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Vamos ver se você é fã de verdade.',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaQuiz()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 16, 161, 245),
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Começar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}