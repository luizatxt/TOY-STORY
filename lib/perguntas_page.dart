class Pergunta {
  final String texto;
  final List<String> respostas;
  final String respostaCorreta;

  Pergunta({
    required this.texto,
    required this.respostas,
    required this.respostaCorreta,
  });
}

List<Pergunta> perguntas = [
  Pergunta(
    texto: 'Qual é o nome do cowboy protagonista em Toy Story?',
    respostas: ['Woody', 'Buzz', 'Andy', 'Jessie'],
    respostaCorreta: 'Woody',
  ),
  Pergunta(
    texto: 'Qual brinquedo acredita ser um patrulheiro espacial?',
    respostas: ['Woody', 'Sr. Cabeça de Batata','Buzz Lightyear','Slinky'],
    respostaCorreta: 'Buzz Lightyear',
  ),
  Pergunta(
    texto: 'Quem é o dono dos brinquedos em Toy Story?',
    respostas: [ 'Sid','Andy','Woody', 'Bonnie'],
    respostaCorreta: 'Andy',
  ),
  Pergunta(
    texto: 'Como se chama a vaqueira amiga do Woody?',
    respostas: [ 'Bo Peep', 'Barbie','Jessie','Dolly'],
    respostaCorreta: 'Jessie',
  ),
   Pergunta(
    texto: 'Qual é o nome do cachorro de molas em Toy Story?',
    respostas: ['Slinky', 'Rex', 'Bullseye', 'Duke Caboom'],
    respostaCorreta: 'Slinky',
  ),
  Pergunta(
    texto: 'Quem é o dinossauro verde e medroso do grupo?',
    respostas: ['Buzz', 'Woody', 'Hamm','Rex'],
    respostaCorreta: 'Rex',
  ),
  Pergunta(
    texto: 'Qual é o nome do porquinho cofrinho em Toy Story?',
    respostas: ['Rex', 'Sr. Cabeça de Batata','Hamm', 'Slinky'],
    respostaCorreta: 'Hamm',
  ),
  Pergunta(
    texto: 'Qual é o nome da pastora que é par romântico do Woody?',
    respostas: ['Bo Peep', 'Jessie', 'Dolly', 'Barbie'],
    respostaCorreta: 'Bo Peep',
  ),
  Pergunta(
    texto: 'Qual criança destrói brinquedos no primeiro filme?',
    respostas: ['Andy', 'Sid', 'Bonnie', 'Emily'],
    respostaCorreta: 'Sid',
  ),
  Pergunta(
    texto: 'Em Toy Story 4, qual é o nome do garfo transformado em brinquedo?',
    respostas: ['Sporky', 'Spoonie', 'Forky', 'Cutlery'],
    respostaCorreta: 'Forky',
  ),
];
