class Pergunta {
  final String texto;
  final List<String> respostas;
  final String respostaCorreta;
  final String imagem;

  Pergunta({
    required this.texto,
    required this.respostas,
    required this.respostaCorreta,
    required this.imagem,
  });
}

List<Pergunta> perguntas = [
  Pergunta(
    texto: 'Qual é o nome do cowboy protagonista em Toy Story?',
    respostas: ['Woody', 'Buzz', 'Andy', 'Jessie'],
    respostaCorreta: 'Woody',
    imagem: 'lib/assets/woody.jpg',
  ),
  Pergunta(
    texto: 'Qual brinquedo acredita ser um patrulheiro espacial?',
    respostas: ['Woody', 'Sr. Cabeça de Batata','Buzz Lightyear','Slinky'],
    respostaCorreta: 'Buzz Lightyear',
    imagem: 'lib/assets/buzz.jpg',
  ),
  Pergunta(
    texto: 'Quem é o dono dos brinquedos em Toy Story?',
    respostas: [ 'Sid','Andy','Woody', 'Bonnie'],
    respostaCorreta: 'Andy',
    imagem: 'lib/assets/andy.jpg',
  ),
  Pergunta(
    texto: 'Como se chama a vaqueira amiga do Woody?',
    respostas: [ 'Bo Peep', 'Barbie','Jessie','Dolly'],
    respostaCorreta: 'Jessie',
    imagem: 'lib/assets/jessie.jpg',
  ),
  Pergunta(
    texto: 'Qual é o nome do cachorro de molas em Toy Story?',
    respostas: ['Slinky', 'Rex', 'Bullseye', 'Duke Caboom'],
    respostaCorreta: 'Slinky',
    imagem: 'lib/assets/slinky.jpg',
  ),
  Pergunta(
    texto: 'Quem é o dinossauro verde e medroso do grupo?',
    respostas: ['Buzz', 'Woody', 'Hamm','Rex'],
    respostaCorreta: 'Rex',
    imagem: 'lib/assets/rex.jpg',
  ),
  Pergunta(
    texto: 'Qual é o nome do porquinho cofrinho em Toy Story?',
    respostas: ['Rex', 'Sr. Cabeça de Batata','Hamm', 'Slinky'],
    respostaCorreta: 'Hamm',
    imagem: 'lib/assets/hamm.jpg',
  ),
  Pergunta(
    texto: 'Qual é o nome da pastora que é par romântico do Woody?',
    respostas: ['Bo Peep', 'Jessie', 'Dolly', 'Barbie'],
    respostaCorreta: 'Bo Peep',
    imagem: 'lib/assets/bopeep.jpg',
  ),
  Pergunta(
    texto: 'Qual criança destrói brinquedos no primeiro filme?',
    respostas: ['Andy', 'Sid', 'Bonnie', 'Emily'],
    respostaCorreta: 'Sid',
    imagem: 'lib/assets/sid.jpg',
  ),
  Pergunta(
    texto: 'Em Toy Story 4, qual é o nome do garfo transformado em brinquedo?',
    respostas: ['Sporky', 'Spoonie', 'Forky', 'Cutlery'],
    respostaCorreta: 'Forky',
    imagem: 'lib/assets/forky.jpg',
  ),
];

