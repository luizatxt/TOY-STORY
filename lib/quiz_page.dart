import 'dart:async';
import 'package:flutter/material.dart';
import 'result_page.dart';
import 'perguntas_page.dart';
import 'fundo_com_imagem.dart';

class TelaQuiz extends StatefulWidget {
  @override
  _TelaQuizState createState() => _TelaQuizState();
}

class _TelaQuizState extends State<TelaQuiz> {
  int perguntaAtual = 0;
  int pontos = 0;
  int tempoRestante = 15;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    iniciarTimer();
  }

  void iniciarTimer() {
    tempoRestante = 15;
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        tempoRestante--;
      });

      if (tempoRestante <= 0) {
        _timer?.cancel();
        avancarPergunta();
      }
    });
  }

  void responder(String respostaSelecionada) {
    if (respostaSelecionada == perguntas[perguntaAtual].respostaCorreta) {
      pontos++;
    }
    _timer?.cancel();
    avancarPergunta();
  }

  void avancarPergunta() {
    if (perguntaAtual + 1 >= perguntas.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => TelaResultado(
            pontuacao: pontos,
            total: perguntas.length,
          ),
        ),
      );
    } else {
      setState(() {
        perguntaAtual++;
      });
      iniciarTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pergunta = perguntas[perguntaAtual];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 16, 161, 245),
        title: Text('Quiz Toy Story'),
      ),
      body: FundoComImagem(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: perguntaAtual < perguntas.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tempo restante: $tempoRestante s',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      pergunta.imagem,
                      height: 180,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 20),
                    Text(
                      pergunta.texto,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    ...pergunta.respostas.map((resposta) {
                      return Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 12),
                        child: ElevatedButton(
                          onPressed: () => responder(resposta),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 16, 161, 245),
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: Text(resposta, style: TextStyle(fontSize: 18)),
                        ),
                      );
                    }).toList(),
                  ],
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}

