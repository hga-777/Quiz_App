import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return const Center(
      //agr index question se zyzda ho gya toh yeh print hoga.
      child: Text('Chl beta ab nikal!!'),
    );
  }
}
