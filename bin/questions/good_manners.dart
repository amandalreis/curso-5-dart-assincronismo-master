class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String amandaBot = 'AmandaBOT:\n';

  GoodManners(this.question);

  bool isGoodManners() {
    if (question.contains('Oi') ||
        question.contains('oi') ||
        question.contains('Olá') ||
        question.contains('olá') ||
        question.contains('Bom dia') ||
        question.contains('bom dia') ||
        question.contains('Boa tarde') ||
        question.contains('boa tarde') ||
        question.contains('Boa noite') ||
        question.contains('boa noite') ||
        question.contains('Obrigado') ||
        question.contains('obrigado') ||
        question.contains('Obrigada') ||
        question.contains('obrigada')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodMannersFunc() {
    if (question.contains('Oi') ||
        question.contains('oi') ||
        question.contains('Olá') ||
        question.contains('olá')) {
      print('${amandaBot} Olá! Como posso te ajudar?');
    } else if (question.contains('Bom dia') || question.contains('bom dia')) {
      print('${amandaBot} Bom dia! Como posso te ajudar?');
    } else if (question.contains('Boa tarde') ||
        question.contains('boa tarde')) {
      print('${amandaBot} Boa tarde! Como posso te ajudar?');
    } else if (question.contains('Boa noite') ||
        question.contains('boa noite')) {
      print('${amandaBot} Boa noite! Como posso te ajudar?');
    } else if (question.contains('Obrigado') ||
        question.contains('obrigado') ||
        question.contains('Obrigada') ||
        question.contains('obrigada')) {
      print('${amandaBot} De nada! Há mais algo em que eu possa ajudar?');
    }
  }
}
