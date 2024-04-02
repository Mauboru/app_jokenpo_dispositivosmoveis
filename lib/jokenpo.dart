import 'dart:math';
import 'package:flutter/material.dart';

class JokenpoHome extends StatefulWidget {
  const JokenpoHome({super.key});

  @override
  State<JokenpoHome> createState() => _JokenpoHomeState();
}

class _JokenpoHomeState extends State<JokenpoHome> {
  var _imgApp = Image.asset('assets/images/padrao.png');
  String _mensagem = 'Escolha do App!!!';
  int numVitorias = 0;
  int numDerrotas = 0;
  int numEmpates = 0;

  void _joga(String opcaoJogador){
    final listaOpcoes = ['pedra', 'papel', 'tesoura'];
    final opcaoApp = listaOpcoes[Random().nextInt(3)];

    setState(() {
      _imgApp = Image(image: AssetImage('assets/images/$opcaoApp.png'));
      _mensagem = _resultado(opcaoJogador, opcaoApp);
    });
  }

  void _placar(){
    
  }

  String _resultado(String opcaoJogdor, String opcaoApp) {
    final String mensagem;
    
    if ((opcaoJogdor == 'pedra') && (opcaoApp == 'tesoura') ||
        (opcaoJogdor == 'papel') && (opcaoApp == 'pedra') ||
        (opcaoJogdor == 'tesoura') && (opcaoApp == 'papel')){
          mensagem = 'Você Ganhou!!';
          numVitorias++;
    } else if (opcaoApp == opcaoJogdor){
      mensagem = 'Empate!!';
      numEmpates++;
    } else {
      mensagem = 'Você Perdeu!!';
      numDerrotas++;
    }
    return mensagem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jokempo-Emoji"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _imgApp,
            const SizedBox(height: 20),
            textHome(_mensagem),
            const SizedBox(height: 20),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              choisePlayerDetector('pedra',
                  image: Image.asset(
                    'assets/images/pedra.png',
                    width: 80,
              )),
              choisePlayerDetector('papel',
                  image: Image.asset(
                    'assets/images/papel.png',
                    width: 80,
              )),
              choisePlayerDetector('tesoura',
                  image: Image.asset(
                    'assets/images/tesoura.png',
                    width: 80,
              )),
            ]),
          ],
        )
      )
    );
  }

  GestureDetector choisePlayerDetector(String playerOpp, {Image? image}) {
    return GestureDetector(
      onTap: () => _joga(playerOpp),
      child: image,
    );
  }

  Text textHome(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      )
    );
  }
}