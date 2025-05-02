import 'package:flutter/material.dart';
import 'quiz_page.dart';
import 'fundo_com_imagem.dart';

class TelaResultado extends StatelessWidget {
  final int pontuacao;
  final int total;

  TelaResultado({required this.pontuacao, required this.total});

  String gerarMensagem() {
    if (pontuacao == 0) {
      return 'Você não acertou nenhuma... Acho que está na hora de rever o filme!';
    } else if (pontuacao <= total ~/ 2) {
      return 'Você acertou $pontuacao de $total. Você sabe um pouco sobre Toy Story!';
    } else if (pontuacao >= total - 1) {
      return 'Parabéns! Você acertou $pontuacao de $total. Você é fã de verdade!';
    } else {
      return 'Muito bem! Você acertou $pontuacao de $total. Quase um expert!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 161, 245),
        title: Text('Resultado'),
      ),
      body: FundoComImagem(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  gerarMensagem(),
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => TelaQuiz()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 16, 161, 245),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: const Text('Reiniciar Quiz', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}