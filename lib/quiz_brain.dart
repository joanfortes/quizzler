import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Alguns gatos tem alergia de humanos.', true),
    Question(
        'Você pode levar uma vaca escada abaixo, mas não escada acima.', false),
    Question(
        'Aproximadamente um quarto dos ossos humanos estão nos pés.', true),
    Question('O sangue de uma lesma é verde.', true),
    Question('O nome de solteira da mãe de Buzz Aldrin era \"Moon\".', true),
    Question('É ilegal fazer xixi no oceano em Portugal.', true),
    Question(
        'Nenhum pedaço de papel quadrado seco pode ser dobrado ao meio mais de 7 vezes.',
        false),
    Question(
        'Em Londres, Reino Unido, se você morrer na Câmara do Parlamento, você tem tecnicamente o direito a um funeral de Estado, porque o edifício é considerado um local sagrado.',
        true),
    Question(
        'O som mais alto produzido por qualquer animal é de 188 decibéis. Esse animal é o elefante africano.',
        false),
    Question(
        'A área total da superfície de dois pulmões humanos é de aproximadamente 70 metros quadrados.',
        true),
    Question('O Google foi originalmente chamado de \"Backrub\".', true),
    Question(
        'Chocolate afeta o coração e o sistema nervoso de um cachorro; algumas onças são suficientes para matar um cachorro pequeno.',
        true),
    Question(
        'Na Virgínia Ocidental, EUA, se você acidentalmente bater em um animal com seu carro, poderá levá-lo para casa para comer.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
