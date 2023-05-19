import 'dart:io';
import 'questions/calculation.dart';
import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String amandaBot = 'AmandaBOT:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o AmandaBOT, aguarde..--');
  await BotClock().clock(2);

  print('$amandaBot Oi! :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);

    if (usuario.contains('tchau') ||
        usuario.contains('Tchau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(amandaBot + ' Até a proxima!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(1);
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(usuario).isGoodManners()) {
      await BotClock().clock(1);
      GoodManners(usuario).goodMannersFunc();
    } else if (Calculation(usuario).isCalculation()) {
      await BotClock().clock(1);
      Calculation(usuario).calculationFunc();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(amandaBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(amandaBot + ' Você pode fazer outra pergunta ou dizer Adeus.');
    }
  } while (a);

  print('--Encerrando AmandaBOT--');
}
