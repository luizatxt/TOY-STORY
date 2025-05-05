import 'package:flutter/material.dart';
import 'quiz_page.dart';  // A tela do quiz
import 'main.dart';  // Importando TelaInicial

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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/assets/fundo.jpg',
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withOpacity(0.3)),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    gerarMensagem(),
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Sua pontuação: $pontuacao/$total',
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Alteração aqui para voltar à tela inicial
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => TelaInicial()), 
                        (route) => false,  // Remove todas as rotas anteriores
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 223, 0),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                    ),
                    child: const Text('Voltar à Tela Inicial',
                        style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
