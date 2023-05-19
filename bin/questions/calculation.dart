import "dart:math";

class Calculation {
  String question;
  String amandaBot = 'AmandaBot:\n';
  bool isThisCalculation = false;

  Calculation(this.question);

  bool isCalculation() {
    if (question.contains('Quanto é') ||
        question.contains('quanto é') ||
        question.contains('+') ||
        question.contains('-') ||
        question.contains('*') ||
        question.contains('/') ||
        question.contains('%')) {
      isThisCalculation = true;
    }
    return isThisCalculation;
  }

  calculationFunc() {
    if (question.contains('+')) {
      List numbers = [];
      List<String> pergunta = question.split(' ');
      pergunta.forEach((element) {
        int? number = int.tryParse(element);
        if (number != null) {
          numbers.add(number);
        }
      });
      int number1 = numbers[0];
      int number2 = numbers[1];

      int resultado = number1 + number2;

      print('${amandaBot} ${resultado}');
    }
    else if (question.contains('-')) {
      List numbers = [];
      List<String> pergunta = question.split('');
      pergunta.forEach((element) {
        int? number = int.tryParse(element);
        if (number != null) {
          numbers.add(number);
        }
      });
      int number1 = numbers[0];
      int number2 = numbers[1];

      int resultado = (number1 - number2);

      print('${amandaBot} ${resultado}');
    }
    else if (question.contains('*')) {
      List numbers = [];
      List<String> pergunta = question.split('');
      pergunta.forEach((element) {
        int? number = int.tryParse(element);
        if (number != null) {
          numbers.add(number);
        }
      });
      int number1 = numbers[0];
      int number2 = numbers[1];

      int resultado = (number1 * number2);

      print('${amandaBot} ${resultado}');
    }
    else if (question.contains('/')) {
      List numbers = [];
      List<String> pergunta = question.split('');
      pergunta.forEach((element) {
        int? number = int.tryParse(element);
        if (number != null) {
          numbers.add(number);
        }
      });
      int number1 = numbers[0];
      int number2 = numbers[1];

      int resultado = (number1 ~/ number2);

      print('${amandaBot} ${resultado}');
    }
    else if (question.contains('%')) {
      List numbers = [];
      List<String> pergunta = question.split('');
      pergunta.forEach((element) {
        int? number = int.tryParse(element);
        if (number != null) {
          numbers.add(number);
        }
      });
      int number1 = numbers[0];
      int number2 = numbers[1];

      int resultado = (number1 % number2);

      print('${amandaBot} ${resultado}');
    }
  }
}
