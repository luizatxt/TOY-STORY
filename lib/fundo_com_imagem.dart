import 'package:flutter/material.dart';

class FundoComImagem extends StatelessWidget {
  final Widget child;

  const FundoComImagem({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fundo_padrao.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}