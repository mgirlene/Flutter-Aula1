import 'package:atividade1/atividade1.dart' as atividade1;
import 'dart:io';

void main(List<String> arguments) {
  print('Informe seu nome:');
  String nome = stdin.readLineSync() ?? "";

  print('Informe seu peso:');
  var entradaPeso = stdin.readLineSync() ?? "";
  var peso = double.parse(entradaPeso);

  print('Informe sua altura:');
  var entradaAltura = stdin.readLineSync() ?? "";
  var altura = double.parse(entradaAltura);

  var imc = peso / (altura * altura);

  if (imc < 18.5) {
    print('Você está abaixo do peso');
  } else if (imc > 18.5 && imc < 25) {
    print('Seu peso está normal');
  } else if (imc > 25 && imc < 30) {
    print('Você está com Sobrepeso');
  } else if (imc > 30) {
    print('Obesidade');
  }

  print('$nome, o seu imc é $imc');
}
