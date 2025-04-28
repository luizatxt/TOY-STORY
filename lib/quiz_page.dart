import 'package:flutter/material.dart';
import 'result_page.dart'; // Tela de resultado

class TelaQuiz extends StatefulWidget {
  @override
  _TelaQuizState createState() => _TelaQuizState();
}

class _TelaQuizState extends State<TelaQuiz> {
  int perguntaAtual = 0;
  int pontos = 0;

  List<Pergunta> perguntas = [
    Pergunta(
      texto: 'Qual é o nome do cowboy protagonista em Toy Story?',
      respostas: ['Woody', 'Buzz', 'Andy', 'Jessie'],
      respostaCorreta: 'Woody',
    ),
    Pergunta(
      texto: 'Qual brinquedo acredita ser um patrulheiro espacial?',
      respostas: ['Buzz Lightyear', 'Woody', 'Sr. Cabeça de Batata', 'Slinky'],
      respostaCorreta: 'Buzz Lightyear',
    ),
    Pergunta(
      texto: 'Quem é o dono dos brinquedos em Toy Story?',
      respostas: ['Andy', 'Sid', 'Woody', 'Bonnie'],
      respostaCorreta: 'Andy',
    ),
    Pergunta(
      texto: 'Como se chama a vaqueira amiga do Woody?',
      respostas: ['Jessie', 'Bo Peep', 'Barbie', 'Dolly'],
      respostaCorreta: 'Jessie',
    ),
  ];

  void responder(String respostaSelecionada) {
    if (respostaSelecionada == perguntas[perguntaAtual].respostaCorreta) {
      pontos++;
    }

    setState(() {
      perguntaAtual++;
    });
  }

  void reiniciarQuiz() {
    setState(() {
      perguntaAtual = 0;
      pontos = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool quizFinalizado = perguntaAtual >= perguntas.length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 197, 154),
        title: Text('Quiz Toy Story'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: quizFinalizado
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Você acertou $pontos de ${perguntas.length} perguntas!',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: reiniciarQuiz,
                      child: Text('Jogar Novamente'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 54, 197, 154),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    perguntas[perguntaAtual].texto,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  ...perguntas[perguntaAtual].respostas.map((resposta) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        onPressed: () => responder(resposta),
                        child: Text(resposta),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 54, 197, 154),
                          foregroundColor: Colors.white,
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
      ),
    );
  }
}